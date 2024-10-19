{

  description = "My nix flake";

  inputs = {
    # Nix knows where nixpkgs are, therefore the full github URI is not needed
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nixvim.url = "github:nix-community/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";
    rose-pine-hyprcursor.url = "github:ndom91/rose-pine-hyprcursor";
  };

  outputs = inputs @ { nixpkgs, home-manager, nixvim, ... }: 
  let
    lib = nixpkgs.lib;
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations = {
      nixos-vm = lib.nixosSystem {
        inherit system;
	      modules = [
            ./hosts/nixos-vm/configuration.nix
          ];
      };

      nixos = lib.nixosSystem {
          inherit system;
          specialArgs = { inherit inputs; };
          modules = [
            ./hosts/nixos/configuration.nix
            ];
        };
    };

    homeConfigurations = {
        kapper = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [
            ./home.nix
            nixvim.homeManagerModules.nixvim
            ./modules
          ];
        };
      };
  };

}
