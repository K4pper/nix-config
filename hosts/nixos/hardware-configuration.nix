# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "nvme" "xhci_pci" "ahci" "usbhid" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/2a974b52-5d14-4ded-85a7-14bf2640ca98";
      fsType = "ext4";
    };

  boot.initrd.luks.devices."luks-f93e4ba8-3b95-4fe5-ac00-21688ce9686f".device = "/dev/disk/by-uuid/f93e4ba8-3b95-4fe5-ac00-21688ce9686f";

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/2756-6013";
      fsType = "vfat";
      options = [ "fmask=0022" "dmask=0022" ];
    };

  fileSystems."/mnt/ssd" =
    { device = "/dev/disk/by-uuid/95a5b63c-c627-44eb-a16f-29a4712636d8";
      fsType = "ext4";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/27854457-07d1-4956-9da7-8ea17ac6c906"; }
    ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.eno1.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
