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
    yarnlock2json() {
      node -e '
        const lockfile = require("@yarnpkg/lockfile");
        const fs = require("fs");
        const semver = require("semver");

        const yarnLock = fs.readFileSync("yarn.lock", "utf8");
        const json = lockfile.parse(yarnLock).object;
        const keys = Object.keys;

        const split = k => k.match(/^(@?[^@]+)@([^@]+)$/);
        const valid = k => semver.valid(k);
        const entry = k => { return {[split(k)[1]]: split(k)[2]} };
        const uniqe = a => {
          let r = [];
          a.forEach(v => -1 < r.indexOf(v) ? null : r.push(v))
          return r;
        }
        const merge = (a, b) => { 
          let r = {};
          keys(a).forEach(k => r[k] = a[k]); 
          keys(b||{}).forEach(k => r[k] = b[k]);
          return r;
        };
        const hoist = a => {
          let r = {};
          a.forEach(o => keys(o).forEach(k => {
            if (!r[k]) r[k] = [[],[]];
            r[k][0] = uniqe(r[k][0].concat(json[k + "@" + o[k]].version))
            if (valid(o[k])) r[k][0] = uniqe(r[k][0].concat(o[k]))
            else r[k][1] = uniqe(r[k][1].concat(o[k]))
          }))
          return r;
        };
        
        const flat = o => keys(o).map(
          k => merge(entry(k), o[k].dependencies)
        );

        const fix = hoist(flat(json));
        console.log(JSON.stringify(fix, null, "  "));
      '
    }
    yarnlock2json
    #mkdir -p node_modules
    #rm node_modules/electron -fr
    #ln -sT ${electronPackages.electron}/lib/node_modules/electron node_modules/electron
    #rm node_modules/electron-chromedriver -fr
    #ln -sT ${electronPackages.electron-chromedriver}/lib/node_modules/electron-chromedriver node_modules/electron-chromedriver
  '';
}
