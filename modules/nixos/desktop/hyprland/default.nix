{pkgs, ...}:
{
  home.packages = with pkgs; [
    lxqt.lxqt-policykit
    wofi
  ];

  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.settings = {
    monitor = [
      "DP-2, 5120x1440@240, 0x0, 1"
    ];
    "$mainMod" = "$SUPER";
    "$terminal" = "alacritty";
    "$menu" = "wofi --show drun";
    "$lock" = "hyprlock";
    exec-once = [
      "waybar & swaync"
      "lxqt-policy-agent"
      "swaybg --image /home/kapper/Documents/Wallpapers/UltraWideWallpaper.jpg"
      "exec swayidle -w timeout 999 'hyprctl dispatch dpms off' resume 'hyprctl dispatch dpms on' timeout 999 '$lock' before-sleep '$lock'"
    ];
    input = {
      kb_layout = "us";
      follow_mouse = 1;
      sensitivity = -0.5;
      accel_profile = "flat";
      force_no_accel = true;
    };
    env = [
    "HYPRSHOT_DIR,$HOME/Documents/Screenshots"
    "HYPRCURSOR_THEME,rose-pine-hyprcursor"
    ];
    general = {
      gaps_in = 4;
      gaps_out = 10;
      border_size = 1; layout = "master";
      allow_tearing = false;
    };
    master = {
     allow_small_split = true;
     orientation = "left";
     slave_count_for_center_master = 0;
     mfact = "0.55";
    };
    cursor = {
      inactive_timeout = 3;
      no_hardware_cursors = 2;
    };
    decoration = {
      rounding = 5;
      blur = {
        enabled = true;
        size = 3;
        passes = 1;
      };
      shadow = {
        enabled = true;
        range = 4;
        render_power = 3;
      };
    };
    misc = {
      force_default_wallpaper = 0;
      disable_hyprland_logo = false;
      disable_splash_rendering = true;
      mouse_move_enables_dpms = false;
      key_press_enables_dpms = true;
    };
    workspace = [
      "10, border:false, rounding:false"
    ];
    bind = [

      # binds for applications
      "$mainMod, T, exec, $terminal"
      "$mainMod CTRL, Q, exec, $lock"
      "$mainMod, E, exec, $file-manager"
      "$mainMod, Q, killactive"
      "$mainMod, SPACE, exec, $menu"
      "$mainMod, DELETE, exit"

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
      "$mainMod, L, movefocus, r"
      "$mainMod SHIFT, H, movewindow, l"
      "$mainMod SHIFT, J, movewindow, d"
      "$mainMod SHIFT, K, movewindow, u"
      "$mainMod SHIFT, L, movewindow, r"

      # Layout config
      "$mainMod CTRL, comma, layoutmsg, addmaster"
      "$mainMod CTRL, period, layoutmsg, removemaster"
      "$mainMod SHIFT, down, layoutmsg, orientationcenter"
      "$mainMod SHIFT, left, layoutmsg, orientationleft"
      "$mainMod SHIFT, right, layoutmsg, orientationright"
      "$mainMod SHIFT, RETURN, layoutmsg, swapwithmaster" 
      "$mainMod SHIFT, period, layoutmsg, mfact +0.1"
      "$mainMod SHIFT, comma, layoutmsg, mfact -0.1"
      "$mainMod SHIFT, F, fullscreen"
      "$mainMod ALT, F, togglefloating"
      "$mainMod ALT, C, centerwindow"

      # Screenshot
      "$mainMod, P, exec, hyprshot -m region --clipboard-only"

      # Mouse binds
      "ALT, mouse:272, movewindow"
    ];
    xwayland = {
      force_zero_scaling = true;
    };
  };

}
