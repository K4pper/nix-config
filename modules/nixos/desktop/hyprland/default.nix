{pkgs, ...}:
{
  home.packages = with pkgs; [
    lxqt.lxqt-policykit
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
      "lxqt-policy-agent"
    ];
    input = {
      kb_layout = "us";
      follow_mouse = 1;
      sensitivity = -0.5;
      accel_profile = "flat";
      force_no_accel = true;
    };
    env = [
    ];
    general = {
      gaps_in = 2;
      gaps_out = 5;
      border_size = 1;
      layout = "master";
      allow_tearing = false;
    };
    master = {
     allow_small_split = true;
     orientation = "center";
     always_center_master = true;
     mfact = "0.40";
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
    misc = {
      force_default_wallpaper = 0;
      disable_hyprland_logo = true;
      mouse_move_enables_dpms = false;
      key_press_enables_dpms = true;
    };
    bind = [
      "$mainMod, T, exec, $terminal"
      "$mainMod, L, exec, $lock"
      "$mainMod, Q, exit"
      "ALT, SPACE, exec, $menu"
      "$mainMod, C, killactive"
      "$mainMod, 1, workspace, 1"
      "$mainMod, 2, workspace, 2"
      "$mainMod, 3, workspace, 3"
      "$mainMod, 4, workspace, 4"
      "$mainMod, 5, workspace, 5"
      "$mainMod, 6, workspace, 6"
      "$mainMod SHIFT, M, layoutmsg, addmaster"
      "$mainMod SHIFT, N, layoutmsg, removemaster"
    ];
    xwayland = {
      force_zero_scaling = true;
    };
  };

}
