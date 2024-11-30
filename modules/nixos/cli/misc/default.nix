{ pkgs, ... }:
{
  home.packages = with pkgs; [
    jq
    yq
    ripgrep
    gcc
    nodejs_22
    bat
    lazygit
    nerd-fonts.jetbrains-mono
    fd
    eza
    fzf
    htop
    zip
    unzip
    gnumake
    gh
    wl-clipboard
  ];
}
