# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page and in the NixOS manual (accessible by running ‘nixos-help’).
{ pkgs, ... }:
{ imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ../../modules/nixos
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Networking
  networking.hostName = "t14"; # Define your hostname.
  networking.networkmanager.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.kath = {
    isNormalUser = true;
    description = "Kasper Therkelsen";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" ];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Enable Flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

    programs.dconf.enable = true;

    # 1Password
    programs._1password.enable = true;
    programs._1password-gui = {
        enable = true;
        polkitPolicyOwners = [ "kath" ];
        };

  # Kernel
  boot.kernelPackages = pkgs.linuxPackages_latest;

    # Bluetooth
    hardware.bluetooth = {
        enable = true;
        powerOnBoot = true;
    };
    services.blueman.enable = true;


  # Swap
  swapDevices = [
    {
      device = "/swapfile";
      size = 32*1024;
    }
  ];

    # UWSM
    programs.uwsm = {
        enable = true;
        waylandCompositors = {
            hyprland = {
                prettyName = "Hyprland";
                comment = "Hyprland compositor managed by UWSM";
                binPath = "/home/kath/.nix-profile/bin/Hyprland";
            };
        };
    };

    # Enable Desktop Module
    desktop.enable = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?
}

