{ pkgs, ... }:
{
  home.packages = with pkgs; [
    hyprshot
    swappy
  ];
}
