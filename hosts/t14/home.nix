{ ... }:

{
    imports = [ ../../modules/home ];

  home.username = "kath";
  home.homeDirectory = "/home/kath";

  # The state version is required and should stay at the version
  # you orignially installed
  home.stateVersion = "24.05";
  home.packages = [];
  home.file = {};

  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;

}

