{ pkgs, ... }:
{
  # XDG portal
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal-hyprland
    ];
  };

  # Window manager
  programs.hyprland.enable = true;

  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  # Gnome keyring
  services.gnome.gnome-keyring.enable = true;



  boot.initrd.systemd.enable = true;
}

