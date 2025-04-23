{ pkgs, ... }:
{
  virtualisation.libvirtd.enable = true;
  virtualisation.podman = {
    enable = true;
    dockerCompat = true;
  };
  programs.virt-manager.enable = true;
  environment.systemPackages = with pkgs; [
    distrobox
    podman-compose
  ];
}

