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

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      format = lib.concatStrings [
       "$username"
       "$hostname"
       "$directory"
       "$git_branch"
       "$git_state"
       "$git_status"
       "$line_break"
       "$character"
      ];
      character = {
        success_symbol = "[❯](purple)";
        error_symbol = "[❯](red)";
        vimcmd_symbol = "[❮](green)";
      };
      git_branch = {
        format = "[$branch]($style)";
        style = "bright-black";
      };
      git_status = {
        format = "[[(*$conflicted$untracked$modified$staged$renamed$deleted)](218) ($ahead_behind$stashed)]($style)";
        style = "cyan";
        conflicted = "";
        untracked = "";
        modified = "";
        staged = "";
        renamed = "";
        deleted = "";
        stashed = "≡";
      };
      git_state = {
        format = "'\([$state( $progress_current/$progress_total)]($style)\) '";
        style = "bright-black";
      };
    };
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
