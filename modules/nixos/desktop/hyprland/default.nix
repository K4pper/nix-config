{pkgs, ...}:
{
  home.packages = with pkgs; [
    lxqt.lxqt-policykit
    wofi
  ];

  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.settings = {
    monitor = [
    ];
    "$mainMod" = "$SUPER";
    "$terminal" = "alacritty";
    "$menu" = "wofi --show drun";
    "$lock" = "swaylock";
    exec-once = [
      "waybar & swaync"
      "lxqt-policy-agent"
      "swaybg --image /home/kapper/Documents/Wallpapers/dark-cabin.jpg"
      "exec swayidle -w timeout 180 'hyprctl dispatch dpms off' resume 'hyprctl dispatch dpms on' timeout 300 '$lock' before-sleep '$lock'"
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
     always_center_master = true;
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
      force_default_wallpaper = 0;
      disable_hyprland_logo = false;
      disable_splash_rendering = true;
      mouse_move_enables_dpms = false;
      key_press_enables_dpms = true;
    };
    windowrulev2 = [
      "fullscreen,class:^steam_app\d+$"
      "monitor 2,class:^steam_app_\d+$"
      "workspace 10,class:^steam_app_\d+$"
    ];
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
      "$mainMod SHIFT, M, layoutmsg, addmaster"
      "$mainMod SHIFT, N, layoutmsg, removemaster"
      "$mainMod SHIFT, down, layoutmsg, orientationcenter"
      "$mainMod SHIFT, left, layoutmsg, orientationleft"
      "$mainMod SHIFT, right, layoutmsg, orientationright"
      "$mainMod SHIFT, RETURN, layoutmsg, swapwithmaster" 
      "$mainMod SHIFT, I, layoutmsg, mfact +0.2"
      "$mainMod SHIFT, D, layoutmsg, mfact -0.2"
      "$mainMod, M, fullscreen"

      # Screenshot
      "$mainMod, P, exec, hyprshot -m region"
    ];
    xwayland = {
      force_zero_scaling = true;
    };
  };

}
