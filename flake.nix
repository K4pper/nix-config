{
  description = "Flake for my desktops";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    {
    nixpkgs,
    nix-darwin,
    ...
    }@inputs:
    let
      lib = nixpkgs.lib;
      pkgs = nixpkgs.legacyPackages.aarch64-darwin;
    in
    {
    nixosConfigurations = {
      AURA-M3GM7PN7F2 = nix-darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        modules = [ ./hosts/AURA-M3GM7PN7F2/configuration.nix ];
        specialArgs = { inherit inputs; };
      };
      t14 = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [];
      };
    };
  };
}
