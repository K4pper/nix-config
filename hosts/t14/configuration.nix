# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ../modules/nixos
      ./modules/nixos
    ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  networking.hostName = "t14"; # Define your hostname.

  # Enable networking
  networking.networkmanager.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.kath = {
    isNormalUser = true;
    description = "Kasper Therkelsen";
    extraGroups = [
      "networkmanager"
      "wheel"
      "docker"
    ];
  };

  # Logind suspend actions
  services.logind.lidSwitchExternalPower= "ignore";
  services.logind.lidSwitch = "suspend";
  services.logind.lidSwitchDocked = "ignore";

  # Bluetooth
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
    settings = {
      General = {
        Enable = "Source,Sink,Media,Socket";
      };
    };
  };
  services.blueman.enable = true;

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  # Kernel
  boot.kernelPackages = pkgs.linuxPackages_6_16;

  # Swap
  swapDevices = [
    {
      device = "/swapfile";
      size = 32*1024;
    }
  ];
  services.keyd = {
    enable = true;
    keyboards.default.settings = {
      main = {
        capslock = "esc";
      };
    };
  };
  services.tlp = {
    enable = true;
    settings = {
      CPU_SCALING_GOVERNOR_ON_AC = "performance";
      CPU_SCALING_GOVERNOR_ON_BAT = "powersave";

      CPU_ENERGY_PERF_POLICY_ON_BAT = "default";
      CPU_ENERGY_PERF_POLICY_ON_AC = "performance";

      CPU_MIN_PERF_ON_AC = 0;
      CPU_MAX_PERF_ON_AC = 100;
      CPU_MIN_PERF_ON_BAT = 0;
      CPU_MAX_PERF_ON_BAT = 100;
      CPU_BOOST_ON_AC = 1;
      CPU_BOOST_ON_BAT = 1;

    };
  };
  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?

}
