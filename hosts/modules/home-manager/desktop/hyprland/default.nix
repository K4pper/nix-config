{ ... }:
{
  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.settings = {
    monitor = [
      "HDMI-A-1,5120x1440@60.00,auto,1"
      "DP-2, 5120x1440@240.00,auto,1"
    ];
    "$mainMod" = "$SUPER";
    "$terminal" = "alacritty"; "$menu" = "wofi --show drun";
    "$lock" = "hyprlock";
    "$browser" = "google-chrome-stable";
    exec-once = [
      "hyprpolkitagent"
    ];
    input = {
      sensitivity = 0.1;
      accel_profile = "adaptive";
      kb_layout = "us";
      kb_variant = "altgr-intl";
      touchpad = {
        natural_scroll = true;
      };
    };
    env = [
      "HYPRCURSOR_THEME,rose-pine-hyprcursor"
    ];
    general = {
      layout = "master";
      allow_tearing = false;
    };
    decoration = {
      rounding = 3;
    };
    master = {
      allow_small_split = true;
      orientation = "center";
      slave_count_for_center_master = 0;
      mfact = "0.55";
    };
    xwayland = {
      force_zero_scaling = true;
    };
    bind = [

      # applications
      "$mainMod, T, exec, $terminal"
      "$mainMod CTRL, Q, exec, $lock"
      "$mainMod, B, exec, $browser"
      "$mainMod, Q, killactive"
      "$mainMod, SPACE, exec, $menu"
      "$mainMod, DELETE, exit"

      # Workspaces
      "$mainMod, 1, workspace, 1"
      "$mainMod, 2, workspace, 2"
      "$mainMod, 3, workspace, 3"
      "$mainMod, 4, workspace, 4"
      "$mainMod, 5, workspace, 5"
      "$mainMod, 6, workspace, 6"
      "$mainMod SHIFT, 1, movetoworkspacesilent, 1"
      "$mainMod SHIFT, 2, movetoworkspacesilent, 2"
      "$mainMod SHIFT, 3, movetoworkspacesilent, 3"
      "$mainMod SHIFT, 4, movetoworkspacesilent, 4"
      "$mainMod SHIFT, 5, movetoworkspacesilent, 5"
      "$mainMod SHIFT, 6, movetoworkspacesilent, 6"

      # Windows
      "$mainMod, H, movefocus, l"
      "$mainMod, J, movefocus, d"
      "$mainMod, K, movefocus, u"
      "$mainMod, L, movefocus, r"
      "$mainMod SHIFT, H, movewindow, l"
      "$mainMod SHIFT, J, movewindow, d"
      "$mainMod SHIFT, K, movewindow, u"
      "$mainMod SHIFT, L, movewindow, r"

      # Layouts
      "$mainMod, period, layoutmsg, mfact +0.1"
      "$mainMod, comma, layoutmsg, mfact -0.1"

      # Screenshot
      "$mainMod, P, exec, hyprshot -m region -r screenshot | swappy -f -"

      # Brightness
      ", XF86MonBrightnessUp, exec, brightnessctl set 5%+"
      ", XF86MonBrightnessDown, exec, brightnessctl set 5%-"

      # Media keys
      ", XF86AudioRaiseVolume, exec, pamixer -i 5"
      ", XF86AudioLowerVolume, exec, pamixer -d 5"
      ", XF86AudioMute, exec, pamixer -t"
      ", XF86AudioMicMute, exec, pamixer --default-source -m"
      ", XF86AudioPlay, exec, playerctl play-pause"
      ", XF86AudioPause, exec, playerctl play-pause"
      ", XF86AudioNext, exec, playerctl next"
      ", XF86AudioPrev, exec, playerctl previous"

      # Fullscreen & Maximize
      "$mainMod, M, fullscreen, 1"
      "$mainMod, F, fullscreen, 0"

      # Orientation
      "$mainMod CTRL, J, layoutmsg, orientationcenter"
      "$mainMod CTRL, H, layoutmsg, orientationleft"

    ];
    bindm = [
      "$mainMod, mouse:272, movewindow"
    ];
    bindc = [
      "$mainMod, mouse:272, togglefloating"
    ];
  };
}

