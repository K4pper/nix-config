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
      bar = {
        clock = {
          format = "%H:%M";
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
