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
in
(nixLib.callTemplate ./yarn-package.nix
  (nixLib.buildNodeDeps ./yarn.nix overrides)).overrideAttrs (oldAttrs: {
    postInstall = ''
      cd $out
      npm run build
    '';
    buildInputs = [ strace which yarn nodejs-6_x python electron ] ++ oldAttrs.buildInputs;
  })
