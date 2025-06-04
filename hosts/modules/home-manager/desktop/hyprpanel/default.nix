{ inputs, ... }:
{
  imports = [inputs.hyprpanel.homeManagerModules.hyprpanel];

  programs.hyprpanel = {
    enable = true;
    hyprland.enable = true;
    systemd.enable = true;
    overwrite.enable = true;
    settings = {
      layout = {
        "bar.layouts" = {
          "*" = {
            left = [ "workspaces" ];
            middle = [ "windowtitle" ];
            right = [ "volume" "network" "bluetooth" "battery" "clock" "systray" "notifications" ];
          };
        };
      };
      theme = {
        name = "rose_pine";
      };
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
