{

  description = "My first flake!";

  inputs = {
    # Nix knows where nixpkgs are, therefore the full github URI is not needed
    nixpkgs.url = "nixpkgs/nixos-24.05";
  };

  outputs = { self, nixpkgs, ... }: 
  let
    lib = nixpkgs.lib;
  in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        system = "x86-64-linux";
	modules = [ ./configuration.nix ];
      };
    };
  };

}
