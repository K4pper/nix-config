{ config, pkgs, lib, nixvim, ... }:

{
  home.username = "kapper";
  home.homeDirectory = "/home/kapper";
  home.stateVersion = "24.05"; # Please read the comment before changing.
  home.packages = [];
  home.file = {};
  home.sessionVariables = {};

  programs.home-manager.enable = true;

  programs.zsh = {
    enable = true;
    shellAliases = {};
    plugins = [
      {
        # zsh-autosuggestions
        name = "zsh-autosuggestions";
        src = pkgs.fetchFromGitHub {
          owner = "zsh-users";
          repo = "zsh-autosuggestions";
          rev = "v0.7.0";
	        sha256 = "KLUYpUu4DHRumQZ3w59m9aTW6TBKMCXl2UcKi4uMd7w=";
        };
      }
      {
        # zsh-syntax-highlighting
        name = "zsh-syntax-highlighting";
        src = pkgs.fetchFromGitHub {
          owner = "zsh-users";
          repo = "zsh-syntax-highlighting";
          rev = "0.8.0";
          sha256 = "iJdWopZwHpSyYl5/FQXEW7gl/SrKaYDEtTH9cGP7iPo=";
        };
      }
    ];
  };

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
