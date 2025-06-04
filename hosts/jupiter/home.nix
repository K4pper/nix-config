{ ... }:

{

  imports = [
    ./modules/home-manager
    ../modules/home-manager
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home = {
    stateVersion = "25.05";
    username = "kapper";
    homeDirectory = "/home/kapper";
  };

  nixpkgs.config.allowUnfree = true;
}

