{pkgs, ...}:
{
  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.settings = {
    "$mainMod" = "$SUPER";
    "$terminal" = "wezterm";
    "$menu" = "wofi --show drun";
    "$lock" = "swaylock";
    exec-once = [
      "waybar & swaync"
    ];

    input = {
      kb_layout = "us";
      follow_mouse = 1;
      sensitivity = -0.5;
    };
    general = {
      gaps_in = 2;
      gaps_out = 5;
      border_size = 1;
      layout = "dwindle";
      allow_tearing = false;
    };
    cursor = {
      inactive_timeout = 3;
    };
    decoration = {
      rounding = 2;
      blur = {
        enabled = true;
        size = 3;
        passes = 1;
      };
      drop_shadow = "yes";
      shadow_range = 4;
      shadow_render_power = 3;
    };
    bind = [
      "$mainMod, T, exec, $terminal"
      "$mainMod, Q, exit"
      "ALT, SPACE, exec, $menu"
    ];
  };

}