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
            dontBuildNpm = true;
          };`

        const fetchurl = ({url, sha1}) => 
        `fetchurl {
              url = "''${url}";
              sha1 = "''${sha1}";
            }`

        const dependencies = o => keys(o||{}).map(
          //TODO rec; sources
          k => `
              "''${k}@''${o[k]}"`
        );

        const entries = o => keys(o).map(k => {
          let v = o[k];
          return source({
            key: k,
            //TODO normalize / in name
            name: splitKey(k)[1],
            packageName: splitKey(k)[1],
            version: v.version,
            //TODO fetchgit
            src: fetchurl({
              url: splitUrl(v.resolved)[1],
              sha1: splitUrl(v.resolved)[2],
            }),
            dependencies: dependencies(v.dependencies)
          });
        })

        console.log(entries(json).join(""));
      '
    }
    yarnlock2nix
    #mkdir -p node_modules
    #rm node_modules/electron -fr
    #ln -sT ${electronPackages.electron}/lib/node_modules/electron node_modules/electron
    #rm node_modules/electron-chromedriver -fr
    #ln -sT ${electronPackages.electron-chromedriver}/lib/node_modules/electron-chromedriver node_modules/electron-chromedriver
  '';
}
