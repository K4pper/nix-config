# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page and in the NixOS manual (accessible by running ‘nixos-help’).
{ pkgs, inputs, ... }:
{ imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Networking
  networking.hostName = "nixos"; # Define your hostname.
  networking.networkmanager.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.kapper = {
    isNormalUser = true;
    description = "Kasper Therkelsen";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" ];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = [
    inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default
    pkgs.protonup
    pkgs.mangohud
    pkgs.lutris
  ];

  # Enable Flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

    # 1Password
    programs._1password.enable = true;
    programs._1password-gui = {
        enable = true;
        polkitPolicyOwners = [ "kapper" ];
        };

  # Kernel
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Mounting disks
  fileSystems."/mnt/ssd" =
  { device = "/dev/disk/by-uuid/a0c0dec5-190d-4b60-9611-de1e32a71cd7";
      fsType = "ext4";
      options = [
        "nofail"
      ];
  };

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

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?
}
