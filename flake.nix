{ inputs.nixpkgs.url = "github:NixOS/nixpkgs/release-21.11";

  outputs = { nixpkgs, ... }: {
    apps."x86_64-darwin".format = {
      type = "app";
      program = nixpkgs.haskellPackages.fourmolu;
    };
  };
}
