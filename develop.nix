with (import (fetchTarball https://github.com/NixOS/nixpkgs/archive/29013598a716a4d6c4ef5.tar.gz) {});
# NOTE: when bumping nixpkgs, also update .travis.yaml

#let electronPackages = (import ./nodePackages/electron {});
#in 
    #electron
    #electronPackages.electron
    #electronPackages.electron-chromedriver

stdenv.mkDerivation {
  name = "daedalus";

  buildInputs = [
    ag
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
    yarnlock2nix() {
      node -e '
        const lockfile = require("@yarnpkg/lockfile");
        const semver = require("semver");
        const fs = require("fs");

        const yarnLock = fs.readFileSync("yarn.lock", "utf8");
        const pkgFile = fs.readFileSync("package.json", "utf8");
        const yarnJson = lockfile.parse(yarnLock).object;
        const pkgJson = JSON.parse(pkgFile);
        const keys = Object.keys;
        const entries = o => keys(o).map(k => [k, o[k]]);
        const values = o => keys(o).map(k => o[k]);
        const unique = a => a.reduce((c,e) => -1 === c.indexOf(e) ? c.concat(e) : c, []);
        const last = a => a[a.length -1];

        const splitKey = k => k.match(/^(@?[^@]+)@([^@]+)$/).slice(1);
        const splitUrl = k => k.match(/^([^#]+)#([^#]+)$/).slice(1);
        
        const source = ({key, name, packageName, version, src, dependencies}) => 
          `
          "''${key}" = nodeEnv.buildYarnPackage {
            name = "''${name}-''${version}";
            packageName = "''${packageName}";
            version = "''${version}";
            src = ''${src};
            removeCircular = [ "''${key}" ];
          ` + (dependencies ? `  dependencies = [''${dependencies.join("")}
            ];` : "") + `
            dontNpmInstall = true;
          };`

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

        const dependencies = o => keys(o||{}).map(
          k => `
              pkgs."''${k}@''${o[k]}"`
        );

        const src = (s, k) => {
          if (s.indexOf("git") === 0) {
            return fetchgit({
              url: splitUrl(s)[1],
              sha1: splitUrl(s)[2],
              key: k
            });
          } 
          return fetchurl({
            url: splitUrl(s)[1],
            sha1: splitUrl(s)[2]
          });
        }

        //const entries = o => keys(o).map(k => {
        //  let v = o[k];
        //  
        //  return source({
        //    key: k,
        //    name: splitKey(k)[1].replace(/[@/]/g, "-"),
        //    packageName: splitKey(k)[1],
        //    version: v.version,
        //    src: src(v.resolved, k),
        //    dependencies: dependencies(v.dependencies),
        //  });
        //})

        const circular = (o, d) => keys(o).map(k => {
          let v = o[k];

          let dependencies = {};

          if (v.dependencies) {
            let d2 = d.slice();
            //d2.push(k);
            keys(v.dependencies).forEach(n => {
              let z = n + "@" + v.dependencies[n];
              if (-1 === d.indexOf(z)) {
                d2.push(z);
                dependencies[z] = circular({[z]: json[z]}, d2);
              }
            });
          }
          
          return {
            key: k,
            name: splitKey(k)[1].replace(/[@/]/g, "-"),
            packageName: splitKey(k)[1],
            version: v.version,
            //src: src(v.resolved, k),
            dependencies: dependencies
          };
        })

        console.log(`{nodeEnv, fetchurl, fetchgit, globalBuildInputs ? [], overrides ? {}}:

rec { pkgs = {
`);
        //console.log(entries(json).join(""));

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
            return "[ "
              + Array.from(deps.keys()).map(d => `pkgs."''${d}"`).join(" ")
              + " ]";
          }
          return "[]";
        };

        const pkgToNixString = (pkg) => {
          return `  "''${pkg.get("attr")}" = nodeEnv.buildYarnPackage {
            name = "''${pkg.get("name")}-''${pkg.get("version")}";
            packageName = "''${pkg.get("packageName")}";
            version = "''${pkg.get("version")}";
            src = ''${srcToNixString(pkg)};
            dependencies = ''${depsToNixString(pkg)};
            dontNpmInstall = true;
            };`
        }

        const fromYarnJson = (name, version) => {
          const semver = getAlias(name, version);
          const yarnPkg = yarnJson[name + "@" + semver];
          const pkg = new Map();

          pkg.set("attr", getAttr(name, version));
          pkg.set("name", name.replace(/[@/]/g, "-"));
          pkg.set("packageName", name);
          pkg.set("version", yarnPkg.version);

          const src = new Map();
          const parts = splitUrl(yarnPkg.resolved);
          
          src.set("url", parts[0]);
          src.set("sha1", parts[1]);

          pkg.set("src", src);
          pkg.set("dependencies", new Map());
          
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
            fromYarnJson(name, version)
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

        aliases.forEach((versions, name) => {
          let alternatives = resolved.get(name);
          let addTop;

          if (alternatives.size === 1) {
            addTop = versions.keys().next().value;
          }
          else if (
            pkgJson.hasOwnProperty("dependencies")
            && pkgJson.dependencies.hasOwnProperty(name)
          ) {
            let version = pkgJson.dependencies[name];

            if (alternatives.has(version) || versions.has(version)) {
              addTop = version;
            } else {
              console.error(
                "dependency \"%s@%s\" not found in yarn.lock or package.json",
                name, version
              )
              process.exit(1);
            }
          }
          else if (
            pkgJson.hasOwnProperty("devDependencies")
            && pkgJson.devDependencies.hasOwnProperty(name)
          ) {
            let version = pkgJson.devDependencies[name];

            if (alternatives.has(version) || versions.has(version)) {
              addTop = version;
            } else {
              console.error(
                "devDependency \"%s@%s\" not found in yarn.lock or package.json",
                name, version
              )
              process.exit(1);
            }
          }
          
          if (!addTop) {
            const s = Array.from(alternatives.keys()).sort(semver.rcompare);
            addTop = s[0];
          }

          addToplevel(name, addTop);
            
          alternatives.forEach((_, version) => {
            if (version !== addTop && !toplevel.has(getAttr(name, version))) {
              addSublevel(name, version);
            }
          });
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

        toplevel.forEach(pkg => console.log(pkgToNixString(pkg)));
        sublevel.forEach(pkg => console.log(pkgToNixString(pkg)));
        console.log(`
};
}
`);
      '
    }
    yarnlock2nix | tee nodePackages/node-packages.nix
    cd nodePackages
    #mkdir node_modules
    #nix-build -A '"websocket@git://github.com/frozeman/WebSocket-Node.git#browserifyCompatible"'

    #mkdir -p node_modules
    #rm node_modules/electron -fr
    #ln -sT ''${electronPackages.electron}/lib/node_modules/electron node_modules/electron
    #rm node_modules/electron-chromedriver -fr
    #ln -sT ''${electronPackages.electron-chromedriver}/lib/node_modules/electron-chromedriver node_modules/electron-chromedriver
  '';
}
