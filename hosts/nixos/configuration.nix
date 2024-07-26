# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Gamer confirmed
  programs.steam.enable = true;

  services.udisks2.enable = true;
  services.gnome.gnome-keyring.enable = true;
  
  # rtkit is optional but recommended
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true; 
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  # Screensharing and stuff + portal for gnome-keyring
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = with pkgs; [ 
      xdg-desktop-portal
      xdg-desktop-portal-gtk 
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-wlr
    ];
  };

  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  virtualisation.libvirtd = {
    enable = true;
  };

  virtualisation.podman.enable = true;
  programs.virt-manager.enable = true;

  # Set ZSH as default shell
  environment.shells = with pkgs; [ zsh ];
  users.defaultUserShell = pkgs.zsh;
  programs.zsh.enable = true;

  # Hyprland
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.initrd.luks.devices."luks-40415a86-9ac7-4218-95c9-945409e739c5".device = "/dev/disk/by-uuid/40415a86-9ac7-4218-95c9-945409e739c5";
  networking.hostName = "nixos"; # Define your hostname.
  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Copenhagen";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_DK.UTF-8";
    LC_IDENTIFICATION = "en_DK.UTF-8";
    LC_MEASUREMENT = "en_DK.UTF-8";
    LC_MONETARY = "en_DK.UTF-8";
    LC_NAME = "en_DK.UTF-8";
    LC_NUMERIC = "en_DK.UTF-8";
    LC_PAPER = "en_DK.UTF-8";
    LC_TELEPHONE = "en_DK.UTF-8";
    LC_TIME = "en_DK.UTF-8";
  };

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.kapper = {
    isNormalUser = true;
    description = "Kasper Therkelsen";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" ];
    packages = with pkgs; [];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
  wofi
  prismlauncher
  gamescope
  lutris
  wine
  winetricks
  ];

  # Enable Flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?

}
