{ config, pkgs, ... }:

{

  imports = [ ../../modules/home-manager ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home = {
    stateVersion = "24.11";

    username = "kath";
    homeDirectory = "/home/kath";

  };

  # Kanshi
  services.kanshi = {};
}
