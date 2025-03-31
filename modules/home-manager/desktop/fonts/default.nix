{ pkgs, ... }:
{
  home.packages = with pkgs; [
    google-fonts
    nerdfonts
  ];
}
