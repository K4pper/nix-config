{ ... }:
{

  programs.hyprpanel = {
    enable = true;
    systemd.enable = true;
    settings = {
      bar.layouts = {
        "*" = {
          left = [ "workspaces" ];
          middle = [ "windowtitle" ];
          right = [ "volume" "network" "bluetooth" "battery" "clock" "systray" "notifications" ];
        };
      };
      theme = "tokyo_night";
      bar = {
        clock = {
          format = "%H:%M";
        };
        workspaces.show_icons = true;
        bluetooth = {
          label = false;
        };
        network = {
          label = false;
        };
      };
      menus.clock = {
        time = {
          military = false;
          hideSeconds = true;
        };
        weather.enabled = false;
      };
    };
  };
}
