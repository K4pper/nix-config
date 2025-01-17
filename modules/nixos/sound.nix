{ config, lib, ... }:
{

options = {
    sound-config.enable = lib.mkEnableOption "enables sound-config";
};

config = lib.mkIf config.sound-config.enable {
    # pipewire and other sound config
    security.rtkit.enable = true;
        services.pipewire = {
        enable = true;
        alsa.enable = true; 
        alsa.support32Bit = true;
        pulse.enable = true;
        jack.enable = true;
        };
    };
}
