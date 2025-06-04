{ hyprpanel, ... }:
{
  programs.hyprpanel = {
    enable = true;
    hyprland.enable = true;
    systemd.enable = true;
  };
}
