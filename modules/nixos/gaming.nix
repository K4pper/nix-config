{ config, lib, ... }:
{
    options = {
        gaming.enable = lib.mkEnableOption "enables libraries needed for gaming";
    };
    config = lib.mkIf config.gaming.enable {
      # Graphics
      hardware.graphics = {
        enable = true;
        enable32Bit = true;
      };
      services.xserver.videoDrivers = ["amdgpu"];

      # Gaming
      programs.steam = {
        enable = true;
        gamescopeSession.enable = true;
      };

      programs.gamemode.enable = true;
      environment.sessionVariables.STEAM_EXTRA_COMPAT_TOOLS_PATH = "/home/kapper/.steam/root/compatibilitytools.d";
    };
}
