nix run github:NixOS/nixpkgs/release-21.11#legacyPackages.x86_64-darwin.haskellPackages.fourmolu -- --mode inplace $(find . -name '*.hs')
