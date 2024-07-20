{pkgs, ...}:
{
  home.packages = with pkgs; [
    lxqt.lxqt-policykit
    wofi
  ];

  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.settings = {
    monitor = [
      "DP-1, 2560x1440@170, 0x0, 1"
      "DP-2, 2560x1440@170, 2560x0, 1"
    ];
    "$mainMod" = "$SUPER";
    "$terminal" = "alacritty";
    "$menu" = "wofi --show drun";
    "$lock" = "swaylock";
    "$file-manager" = "nemo";
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
      gaps_in = 4;
      gaps_out = 10;
      border_size = 1;
      layout = "master";
      allow_tearing = false;
    };
    master = {
     allow_small_split = true;
     orientation = "left";
     mfact = "0.55";
    };
    cursor = {
      inactive_timeout = 3;
      no_hardware_cursors = true;
    };
    decoration = {
      rounding = 5;
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
      force_default_wallpaper = 1;
      disable_hyprland_logo = false;
      disable_splash_rendering = true;
      mouse_move_enables_dpms = false;
      key_press_enables_dpms = true;
    };
    windowrulev2 = [
      "fullscreen,class:^steam_app\d+$"
      "monitor 1,class:^steam_app_\d+$"
      "workspace 10,class:^steam_app_\d+$"
    ];
    workspace = [
      "10, border:false, rounding:false"
    ];
    bind = [

      # binds for applications
      "$mainMod, T, exec, $terminal"
      "$mainMod SHIFT, L, exec, $lock"
      "$mainMod, E, exec, $file-manager"
      "$mainMod, Q, exit"
      "ALT, SPACE, exec, $menu"
      "$mainMod, C, killactive"

      # Switch focus to workspace
      "$mainMod, 1, workspace, 1"
      "$mainMod, 2, workspace, 2"
      "$mainMod, 3, workspace, 3"
      "$mainMod, 4, workspace, 4"
      "$mainMod, 5, workspace, 5"
      "$mainMod, 6, workspace, 6"

      # Move active window to workspace
      "$mainMod SHIFT, 1, movetoworkspace, 1"
      "$mainMod SHIFT, 2, movetoworkspace, 2"
      "$mainMod SHIFT, 3, movetoworkspace, 3"
      "$mainMod SHIFT, 4, movetoworkspace, 4"
      "$mainMod SHIFT, 5, movetoworkspace, 5"
      "$mainMod SHIFT, 6, movetoworkspace, 6"

      # Move focus to window
      "$mainMod, H, movefocus, l"
      "$mainMod, J, movefocus, d"
      "$mainMod, K, movefocus, u"
      "$mainMod, L, movefocus, d"


      "$mainMod SHIFT, M, layoutmsg, addmaster"
      "$mainMod SHIFT, N, layoutmsg, removemaster"
      "$mainMod SHIFT, down, layoutmsg, orientationcenter"
      "$mainMod SHIFT, RETURN, layoutmsg, swapwithmaster" 
      "$mainMod, M, fullscreen"
    ];
    xwayland = {
      force_zero_scaling = true;
    };
  };

}
