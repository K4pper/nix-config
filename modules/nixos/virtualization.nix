{ config, lib, ... }:
{
    options = {
        virtualization.enable = lib.mkEnableOption "enables virtualization";
    };
    config = lib.mkIf config.virtualization.enable {
        # Virtualisation
        virtualisation.libvirtd.enable = true;
        virtualisation.podman.enable = true;
        programs.virt-manager.enable = true;
    };
}
