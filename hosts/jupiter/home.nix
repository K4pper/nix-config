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
    username = "kapper";
    homeDirectory = "/home/kapper";
  };

  nixpkgs.config.allowUnfree = true;
}

