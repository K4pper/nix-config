{ ... }:
{
  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.settings = {
    monitor = [
      ",preferred,auto,1"
    ];
    "$mainMod" = "$SUPER";
    "$terminal" = "alacritty";
    "$menu" = "wofi --show drun";
    "$lock" = "hyprlock";
    exec-once = [
      "hyprpolkitagent"
      "swaync"
      "waybar"
      "exec swayidle -w timeout 999 'hyprctl dispatch dpms off' resume 'hyprctl dispatch dpms on' timeout 999 '$lock' before-sleep '$lock'"
    ];
    input = {
      accel_profile = "adaptive";
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
      always_center_master = true;
      mfact = "0.55";
    };
    bind = [

      # applications
      "$mainMod, T, exec, $terminal"
      "$mainMod CTRL, Q, exec, $lock"
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
      "$mainMod SHIFT, 1, movetoworkspace, 1"
      "$mainMod SHIFT, 2, movetoworkspace, 2"
      "$mainMod SHIFT, 3, movetoworkspace, 3"
      "$mainMod SHIFT, 4, movetoworkspace, 4"
      "$mainMod SHIFT, 5, movetoworkspace, 5"
      "$mainMod SHIFT, 6, movetoworkspace, 6"

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

      # Mouse binds
      "ALT, mouse:272, movewindow"
    ];
    xwayland = {
      force_zero_scaling = true;
    };
  };
}

