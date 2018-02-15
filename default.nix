let
  nixpkgs = import (fetchTarball https://github.com/NixOS/nixpkgs/archive/fb235c98d839ae37a639695ad088d19ef8382608.tar.gz);
  yarn2nixSrc = fetchTarball https://github.com/mayflower/yarn2nix/archive/10eb1e2fbb128a693dfc492852fd00d2487ce914.tar.gz;
in with nixpkgs { overlays = import "${yarn2nixSrc}/nix-lib/overlay.nix"; };

let
  nixLib = pkgs.callPackage "${yarn2nixSrc}/nix-lib" {};
in
(nixLib.callTemplate ./yarn-package.nix
  (nixLib.buildNodeDeps ./yarn.nix)).overrideAttrs (oldAttrs: {
    postInstall = ''
      cd $out
      npm run build
    '';
    buildInputs = [ strace which yarn nodejs-6_x python electron ] ++ oldAttrs.buildInputs;
  })
