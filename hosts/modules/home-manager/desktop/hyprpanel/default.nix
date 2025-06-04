{ inputs, ... }:
{
  imports = [inputs.hyprpanel.homeManagerModules.hyprpanel];

  programs.hyprpanel = {
    enable = true;
    hyprland.enable = true;
    systemd.enable = true;
    settings = {
      menus.clock = {
        time = {
          hideSeconds = true;
        };
      };
    };
  };
}
