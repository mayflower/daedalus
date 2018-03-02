with (import (fetchTarball https://github.com/NixOS/nixpkgs/archive/29013598a716a4d6c4ef5.tar.gz) {});
# NOTE: when bumping nixpkgs, also update .travis.yaml

let electronPackages = (import ./nodePackages/electron {});
in stdenv.mkDerivation {
  name = "daedalus";

  buildInputs = [
    ag
    chromedriver
    electron
    electronPackages.electron
    electronPackages.electron-chromedriver
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
        const fs = require("fs");

        const yarnLock = fs.readFileSync("yarn.lock", "utf8");
        const json = lockfile.parse(yarnLock).object;
        const keys = Object.keys;

        const splitKey = k => k.match(/^(@?[^@]+)@([^@]+)$/);
        const splitUrl = k => k.match(/^([^#]+)#([^#]+)$/);
        
        const source = ({key, name, packageName, version, src, dependencies}) => 
          `
          "''${key}" = nodeEnv.buildNodePackage {
            name = "''${name}-''${version}";
            packageName = "''${packageName}";
            version = "''${version}";
            src = ''${src};
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
              sha256 = gitShaSumOverride."''${key}";
            }`

        const dependencies = o => keys(o||{}).map(
          //TODO rec; sources
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

        const entries = o => keys(o).map(k => {
          let v = o[k];
          
          return source({
            key: k,
            //TODO normalize / in name
            name: splitKey(k)[1].replace(/[@/]/g, "-"),
            packageName: splitKey(k)[1],
            version: v.version,
            src: src(v.resolved, k),
            dependencies: dependencies(v.dependencies)
          });
        })
        console.log(`{nodeEnv, fetchurl, fetchgit, globalBuildInputs ? [], gitShaSumOverride ? {}}:

rec { pkgs = {
`);
        console.log(entries(json).join(""));
        console.log(`
};
}
`);
      '
    }
    yarnlock2nix | tee nodePackages/node-packages.nix
    cd nodePackages
    nix-build -A '"websocket@git://github.com/frozeman/WebSocket-Node.git#browserifyCompatible"'

    #mkdir -p node_modules
    #rm node_modules/electron -fr
    #ln -sT ${electronPackages.electron}/lib/node_modules/electron node_modules/electron
    #rm node_modules/electron-chromedriver -fr
    #ln -sT ${electronPackages.electron-chromedriver}/lib/node_modules/electron-chromedriver node_modules/electron-chromedriver
  '';
}
