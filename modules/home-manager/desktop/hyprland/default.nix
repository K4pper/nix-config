{ pkgs, ... }:
{
  home.packages = with pkgs; [
    hyprpolkitagent
    wofi
  ];

  programs.
  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.settings = {
    monitor = [
      ",highrr,auto,auto"
    ];
    "$mainMod" = "$SUPER";
    "$terminal" = "alacritty";
    "$menu" = "wofi --show drun";
    "$lock" = "hyprlock";
    exec-once = [
      "hyprpolkitagent"
    ];
    input = {
      kb_layout = "us";
      follow_mouse = 1;
      sensitivity = -0.5;
      accel_profile = "adaptive";
    };
  };
}
