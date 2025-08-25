{ pkgs, ... }:
{
  imports = [
    ./locale.nix
    ./sound.nix
    ./virtualisation.nix
    ./desktop.nix
  ];

  config = {
    # Enable zsh
    environment.shells = with pkgs; [ zsh ];
    environment.localBinInPath = true;

    users.defaultUserShell = pkgs.zsh;
    programs.zsh.enable = true;

    # Enable git
    programs.git.enable = true;

    services.upower.enable = true;

    # Gnome keyring
    services.gnome.gnome-keyring.enable = true;

    security.pam.services = {
      login.enableGnomeKeyring = true;
    };

    services.dbus.packages = with pkgs; [
      gnome-keyring
      gcr
    ];

    services.geoclue2 = {
      enable = true;
      enableWifi = true;
    };

    # Automatic cleanup
    nix.gc.automatic = true;
    nix.gc.dates = "daily";
    nix.gc.options = "--delete-older-than 15d";
    nix.settings.auto-optimise-store = true;
  };
}
