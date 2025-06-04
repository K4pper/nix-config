{ pkgs, ... }:
{
  home.packages = with pkgs; [
    google-fonts
    nerd-fonts.jetbrains-mono
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    liberation_ttf
    fira-code
    fira-code-symbols
    dina-font
  ];
}
