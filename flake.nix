{
  description = "Configuration for my Nix Setup";

inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim/nixos-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
      nixpkgs,
      nixpkgs-unstable,
      home-manager,
      nixvim,
      ...
    }@inputs:
  let
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
    homeConfigurations = {
      "kath@t14" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs = {
          pkgs-unstable = import nixpkgs-unstable {
            config.allowUnfree = true;
            inherit system;
          };
          inherit inputs;
        };
        modules = [
          ./hosts/t14/home.nix
          nixvim.homeManagerModules.nixvim
        ];
      };
    };
  };
}
