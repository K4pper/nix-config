{ ... }:

{

  imports = [
    ./modules/home-manager
    ../modules/home-manager
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home = {
    stateVersion = "24.11";

    username = "kath";
    homeDirectory = "/home/kath";

  };
  nixpkgs.config.allowUnfree = true;

  # Kanshi
  services.kanshi = {};
}
