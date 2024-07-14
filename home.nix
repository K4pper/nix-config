{ config, pkgs, lib, nixvim, ... }:

{
  home.username = "kapper";
  home.homeDirectory = "/home/kapper";
  home.stateVersion = "24.05"; # Please read the comment before changing.
  home.packages = [];
  home.file = {};
  home.sessionVariables = {};

  programs.home-manager.enable = true;

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    vimdiffAlias = true;
    viAlias = true;
    vimAlias = true;
    clipboard = {
      register = "unnamedplus";
    };
  };

}
