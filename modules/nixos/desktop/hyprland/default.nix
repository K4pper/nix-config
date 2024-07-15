{pkgs, ...}:
{
  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.settings = {
    "$mainMod" = "$SUPER";
    "$terminal" = "wezterm";
    "$menu" = "wofi --show drun";
    "$lock" = "swaylock";

    input = {
      kb_layout = "us";
      follow_mouse = 1;
      sensitivity = -0.5;
    };
  };

}
