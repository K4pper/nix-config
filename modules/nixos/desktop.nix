{ pkgs, lib, config, ... }:

{
    options = {
        desktop.enable = lib.mkEnableOption "enables libraries needed for desktop";
    };
    config = lib.mkIf config.desktop.enable {

        # Screensharing and stuff + portal for gnome-keyring
        xdg.portal = {
            enable = true;
            wlr.enable = true;
            extraPortals = with pkgs; [
                xdg-desktop-portal-gtk
                xdg-desktop-portal-hyprland
            ];
        };

        # Udisks and keyring
        services.udisks2.enable = false;
        services.gnome.gnome-keyring.enable = true;


        # Hyprland
        programs.hyprland = {
            withUWSM = true;
            xwayland.enable = true;
        };
        environment.sessionVariables.NIXOS_OZONE_WL = "1";
    };
}
