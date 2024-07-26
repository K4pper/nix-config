{ pkgs, lib, ... }:
{
  home.packages = with pkgs; [
    jq
    yq
    ripgrep
    gcc
    nodejs_22
    bat
    lazygit
    nerdfonts
    fd
    eza
    fzf
    htop
    zip
    unzip
    gnumake
    xxd
  ];
}
