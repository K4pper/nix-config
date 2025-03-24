{
  description = "Configuration for my Nix Setup";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
  };

  outputs = {
      nixpkgs,
      ...
    }:
  let
    lib = nixpkgs.lib;
    system = "x86_64-linux";
    pkgs = import nixpkgs {
        inherit system;
      };
  in
  {
    nixosConfigurations = {
      t14 = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [ ./hosts/t14/configuration.nix];
        };
    };
  };
}
