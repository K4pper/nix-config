{ config, pkgs, lib, nixvim, ... }:

{
  home.username = "kapper";
  home.homeDirectory = "/home/kapper";
  home.stateVersion = "24.05";
  home.packages = [];
  home.file = {};
  home.sessionVariables = {};

  programs.home-manager.enable = true;

}
