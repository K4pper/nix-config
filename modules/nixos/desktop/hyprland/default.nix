{pkgs, ...}:
{
  home.packages = with pkgs; [
    polkit-kde-agent
    wofi
  ];

  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.settings = {
    "$mainMod" = "$SUPER";
    "$terminal" = "wezterm";
    "$menu" = "wofi --show drun";
    "$lock" = "swaylock";
    exec-once = [
      "waybar & swaync"
      "polkit-kde-agent"
    ];
    env = [
      "LIBVA_DRIVER+NAME,nvidia"
      "XDG_SESSION_TYPE,wayland"
      "GBM_BACKEND,nvidia-drm"
      "__GLX_VENDOR_LIBRARY_NAME,nvidia"
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
      no_hardware_cursors = true;
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
    monitors = [
      "monitor=DP-3,5120x1440@60,0x0,1"
    ];
    bind = [
      "$mainMod, T, exec, $terminal"
      "$mainMod, Q, exit"
      "ALT, SPACE, exec, $menu"
    ];
  };

}
