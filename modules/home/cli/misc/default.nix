{ pkgs, ... }:
{
  home.packages = with pkgs; [
    jq
    yq-go
    ripgrep
    gcc
    nodejs_22
    bat
    lazygit
    fd
    eza
    fzf
    htop
    zip
    unzip
    gnumake
    gh
    wl-clipboard
    gum
    httpie
    bicep
  ];
}
