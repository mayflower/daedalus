let
  nixpkgs = import (fetchTarball https://github.com/NixOS/nixpkgs/archive/fb235c98d839ae37a639695ad088d19ef8382608.tar.gz);
  yarn2nixSrc = fetchTarball https://github.com/mayflower/yarn2nix/archive/10eb1e2fbb128a693dfc492852fd00d2487ce914.tar.gz;
in with nixpkgs { overlays = import "${yarn2nixSrc}/nix-lib/overlay.nix"; };

let
  nixLib = pkgs.callPackage ../yarn2nix-profpatsch/nix-lib {};
  overrides = {
    "webpack" = {
      # checks from which path it is called and contains a syntax error in case of a failure
      postFixup = ''
        substituteInPlace $out/bin/webpack.js --replace 'return require(localWebpack);' ""
      '';
    };
  };
  nodeDeps = (removeAttrs (nixLib.buildNodeDeps ./yarn.nix overrides)
    [ "_buildNodePackage" ]);

  yarnOfflineMirror = pkgs.runCommand ("daedalus-yarn-offline-mirror") {} ''
    mkdir -p $out
    ${lib.concatMapStringsSep "\n"
    (dep:
      ''
        echo linking yarn-offline-mirror ${dep.drv.yarnOfflineName}
        ln -fsT ${dep.drv.src} "$out/${dep.drv.yarnOfflineName}"
      '')
    (builtins.attrValues nodeDeps)}
  '';
in
(nixLib.callTemplate ./yarn-package.nix nodeDeps).overrideAttrs (oldAttrs: {
    dontBuild = false;
    patchPhase = ''
      export HOME=$PWD
      yarn config set yarn-offline-mirror ${yarnOfflineMirror} --offline
      yarn install --ignore-scripts --offline

      grep -rl '/usr/bin/env' node_modules | \
        xargs -I@ sed -i 's#/usr/bin/env#${coreutils}/bin/env#' @
      
      #cd node_modules/node-sass
      #yarn run install --offline 
    '';
    buildPhase = ''
      #cd $src
      yarn run build --offline
    '';
    installPhase = '' '';
    buildInputs = [ strace which yarn nodejs-6_x python electron libsass ] ++ oldAttrs.buildInputs;
  })
