{ pkgs, ... }:
{
  home.packages = with pkgs; [
    google-fonts
    nerd-fonts.jetbrains-mono
  ];
}
