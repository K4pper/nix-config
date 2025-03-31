{ pkgs, ... }:
{
  home.packages = with pkgs; [
    hyprpolkitagent
    wofi
  ];

  programs.
  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.settings = {

  };
}
