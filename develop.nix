with (import (fetchTarball https://github.com/NixOS/nixpkgs/archive/29013598a716a4d6c4ef5.tar.gz) {});
# NOTE: when bumping nixpkgs, also update .travis.yaml

#let electronPackages = (import ./nodePackages/electron {});
#in 
    #electron
    #electronPackages.electron
    #electronPackages.electron-chromedriver
with builtins; let
  mkPackageJson = path: module: ''
    jq '(..|select(numbers)) |= tostring' ${path}/${module}/package.json
  '';

  mkYarnListJson = ''
    yarn list --json | jq '
      def s(m): {key: m.name, value: m.children|(map(s(.))|from_entries)};
      .data.trees |
        map(del( 
          .. | 
            .hint?, .color?, .shadow?, .depth?,
            (objects | select(has("depth") == false))
        )) | map(s(.)) | from_entries' \
    > yarn-list.json
  '';

  yarnLock = readFile ./yarn.lock;

  resolve = name: version: match
    (".*\n.?${name}@[^\n]*\n"
    + "[ ]*version \"${version}\"\n"
    + "[ ]*resolved \"([^#]*)#([^\"]*)\"\n"
    + ".*") yarnLock;

  walkModules = tree: map (module:
    let
      attr = match "(@?[^@]+)@(.*)" module;
      name = elemAt attr 0;
      version = elemAt attr 1;
      resolved = resolve name version;
      children = walkModules tree.${module};
    in
    [{
      name = module;
      value = {
        src = {
          url = elemAt resolved 0;
          sha1 = elemAt resolved 1;
        };
      };
    }] ++ children) (attrNames tree);

  addSrcs = tree: {
    srcs = listToAttrs (pkgs.lib.flatten (walkModules tree));
    inherit tree;
  };

  mkYarnNix = toFile "daedalus-yarn-nix"
    (toJSON (addSrcs (fromJSON (readFile ./yarn-list.json))));
in
stdenv.mkDerivation {
  name = "daedalus";

  buildInputs = [
    ag
    electron
    chromedriver
    git
    jq
    less
    man
    nodePackages_6_x.bower
    nodePackages_6_x.node-gyp
    nodePackages_6_x.node-inspector
    nodePackages_6_x.node-pre-gyp
    nodePackages_6_x.yarn
    nodejs-6_x
    python2
    which
  ];

  src = null;

  shellHook = ''
    #jq '(..|select(numbers)) |= tostring' node_modules_/event-stream/package.json

    #yarn list --json | jq '
    #  def s(m): {key: m.name, value: m.children|(map(s(.))|from_entries)};
    #  .data.trees |
    #  map( del( .. | .hint?, .color?, .shadow?, .depth?,
    #                 (objects | select(has("depth") == false))
    #  ) ) | map(s(.)) | from_entries' > yarn-list.json

    ${mkYarnListJson}
    echo ${mkYarnNix}

    return
    yarnlock2nix() {
      node -e '
        const lockfile = require("@yarnpkg/lockfile");
        const semver = require("semver");
        const fs = require("fs");

        const yarnList = fs.readFileSync("yarn-list.json", "utf8");
        const yarnListJson = JSON.parse(yarnList);

        const walklist = (path, tree) => {
          let fsfolders = [];
          let jsfolders = [];

          if (fs.existsSync(path)) {
            let atfolders = [];
            fsfolders = fs.readdirSync(path).filter(
              p => p != ".bin" && p != ".yarn-integrity"
            ).filter(
              p => p[0] !== "@" || !atfolders.push(p)
            );
            atfolders.forEach(atfolder => {
              fsfolders.concat(fs.readdirSync(path + "/" + atfolder).filter(
                p => p != ".bin" && p != ".yarn-integrity"
              ))
            });
          }

          const siblings  = Object.keys(tree);

          siblings.forEach(attr => {
            const module = tree[attr];
            const name = attr.match(/(@?[^@]+)@(.*)/)[1];
            const version = attr.match(/(@?[^@]+)@(.*)/)[2];
            const location = path + "/" + name;
            
            if (!fs.existsSync(location)) {
              console.log("fs not found: ", location, version);
            }
            jsfolders.push(name);
            walklist(location + "/node_modules", module);
          })
          fsfolders.forEach(folder => {
            if (jsfolders.indexOf(folder) == -1) {
              console.log("js not found: ", path + "/" + folder);
            }
          });
        }
        walklist("node_modules_", yarnListJson);
        process.exit(0);

        const yarnLock = fs.readFileSync("yarn.lock", "utf8");
        const yarnIntegrity = fs.readFileSync("node_modules_/.yarn-integrity", "utf8");
        const pkgFile = fs.readFileSync("package.json", "utf8");
        const yarnJson = lockfile.parse(yarnLock).object;
        const pkgJson = JSON.parse(pkgFile);
        const yarnIntegrityJson = JSON.parse(yarnIntegrity);
        const keys = Object.keys;
        const entries = o => keys(o).map(k => [k, o[k]]);

        const splitKey = k => k.match(/^(@?[^@]+)@([^@]+)$/).slice(1);
        const splitUrl = k => k.match(/^([^#]+)#([^#]+)$/).slice(1);
        
        const aliases = new Map();
        const resolved = new Map();
        const toplevel = new Map();
        const sublevel = new Map();

        const getResolved = (name, version) => 
          aliases.get(name).get(version) || version;

        const getAlias = (name, version) => {
          let r = resolved.get(name);
          return r.has(version) ? r.get(version)[0] : version;
        }
        
        const getAttr = (name, version) => 
          name + "@" + getResolved(name, version);

        const fetchurl = ({url, sha1}) => 
        `fetchurl {
              url = "''${url}";
              sha1 = "''${sha1}";
            }`

        const fetchgit = ({key, url, sha1}) => 
        `fetchgit {
              url = "''${url}";
              rev = "''${sha1}";
              sha256 = overrides."''${key}".sha256;
            }`

        const srcToNixString = pkg => {
          const src = pkg.get("src");
          const url = src.get("url");

          if (url.indexOf("git") === 0) {
            return fetchgit({
              url,
              sha1: src.get("sha1"),
              key: pkg.get("attr")
            });
          } 

          return fetchurl({
            url,
            sha1: src.get("sha1") 
          });
        }

        const depsToNixString = pkg => {
          const deps = pkg.get("dependencies");
          if (deps.size) {
            return "[\n"
              + Array.from(deps.keys()).map(
                  d => `              "''${d}"`
                ).join("\n")
              + "\n            ]";
          }
          return "[]";
        };

        const pkgToNixString = (pkg) => {
          return `  "''${pkg.get("attr")}" = {
            packageName = "''${pkg.get("packageName")}";
            version = "''${pkg.get("version")}";
            src = ''${srcToNixString(pkg)};
            dependencies = ''${depsToNixString(pkg)};
            toplevel = ''${pkg.get("toplevel")};
            };`
        }

        const fromYarnJson = (name, version, toplevel) => {
          const semver = getAlias(name, version);
          const yarnPkg = yarnJson[name + "@" + semver];
          const pkg = new Map();

          pkg.set("attr", getAttr(name, version));
          pkg.set("packageName", name);
          pkg.set("version", yarnPkg.version);

          const src = new Map();
          const parts = splitUrl(yarnPkg.resolved);
          
          src.set("url", parts[0]);
          src.set("sha1", parts[1]);

          pkg.set("src", src);
          pkg.set("dependencies", new Map());

          pkg.set("toplevel", toplevel || false);
          
          if (yarnPkg.dependencies) {
            const d = pkg.get("dependencies");
            entries(yarnPkg.dependencies).forEach(([name, semver]) => {
              d.set(getAttr(name, semver));
            });
          }
          
          return pkg;
        };

        const addIntoLevel = (level, name, version) => {
          level.set(
            getAttr(name, version),
            fromYarnJson(name, version, level === toplevel)
          );
        }

        const addToplevel = (name, version) => {
          addIntoLevel(toplevel, name, version);
        };

        const addSublevel = (name, version) => {
          addIntoLevel(sublevel, name, version);
        };

        const addAlias = (name, semver, version) => {
          if (!aliases.has(name)) {
            aliases.set(name, new Map());
          }
          aliases.get(name).set(semver, version);
        }

        const addResolved = (name, version, semver) => {
          if (!resolved.has(name)) {
            resolved.set(name, new Map());
          }

          const r = resolved.get(name);

          if (r.has(version)) {
            r.get(version).push(semver);
          } else {
            r.set(version, [semver]);
          }
        }

        entries(yarnJson).forEach(([key, entry]) => {
          let [name, semver] = splitKey(key);

          addAlias(name, semver, entry.version);
          addResolved(name, entry.version, semver);
        });

        yarnIntegrityJson.topLevelPatterns.forEach(pattern => {
          const [ name, version ] = splitKey(pattern);
          addToplevel(name, version);
        });

        aliases.forEach((versions, name) => {
          if (versions.size === 1) {
            addToplevel(name, versions.keys().next().value);
          }
          else
          {
            Array.from(versions.keys()).forEach(version => {
              if (!toplevel.has(getAttr(name, version))) {
                addSublevel(name, version);
              }
            });
          }
        });

        const clearDependencies = (level) => {
          level.forEach(pkg => {
            const d = pkg.get("dependencies");
            Array.from(d.keys()).forEach(attr => {
              if (toplevel.has(attr)) {
                d.delete(attr);
              }
            });
          });
        }

        clearDependencies(toplevel);
        clearDependencies(sublevel);

        console.log(`{nodeEnv, fetchurl, fetchgit, globalBuildInputs ? [], overrides ? {}}:

rec { pkgs = {
`);
        toplevel.forEach(pkg => console.log(pkgToNixString(pkg)));
        sublevel.forEach(pkg => console.log(pkgToNixString(pkg)));
        console.log(`
};
}
`);
      '
    }
    yarnlock2nix \
    #  | tee nodePackages/node-packages.nix
    exit 0
    cd nodePackages
    #rm -fr ../node_modules
    #nix-build -o ../node_modules
    nix-build -j 8 -o node_modules --show-trace
    cd ..

    #mkdir node_modules
    #nix-build -A '"websocket@git://github.com/frozeman/WebSocket-Node.git#browserifyCompatible"'

    #mkdir -p node_modules
    #rm node_modules/electron -fr
    #ln -sT ''${electronPackages.electron}/lib/node_modules/electron node_modules/electron
    #rm node_modules/electron-chromedriver -fr
    #ln -sT ''${electronPackages.electron-chromedriver}/lib/node_modules/electron-chromedriver node_modules/electron-chromedriver
  '';
}
