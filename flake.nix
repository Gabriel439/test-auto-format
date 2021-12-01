{ inputs.nixpkgs.url = "github:NixOS/nixpkgs/release-21.11";

  outputs = { nixpkgs, ... }: {
    apps."x86-64_darwin".format = {
      type = "app";
      program = nixpkgs.haskellPackages.fourmolu;
    };
  };
}
