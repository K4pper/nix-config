{ config, pkgs, lib, ... }:

{
  home.username = "kapper";
  home.homeDirectory = "/home/kapper";
  home.stateVersion = "24.05";
  home.packages = [];
  home.file = {};

  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;

}
