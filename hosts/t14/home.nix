{ pkgs, ... }:

{
    imports = [ ../../modules/home ];

  home.username = "kath";
  home.homeDirectory = "/home/kath";

  # The state version is required and should stay at the version
  # you orignially installed
  home.stateVersion = "24.05";
  home.packages = with pkgs; [
        teams-for-linux
        wireguard-tools
    ];
  home.file = {};

  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;

    # Kanshi
    services.kanshi = {
        enable = true;
        settings = [
            {
                profile.name = "undocked";
                profile.outputs = [
                    {
                    criteria = "eDP-1";
                    scale = 1.0;
                    mode = "1920x1200@60Hz";
                    status = "enable";
                    }
                ];
            }
            {
                profile.name = "docked-at-home";
                profile.outputs = [
                    {
                        criteria = "eDP-1";
                        scale = 1.0;
                        mode = "1920x1200@60Hz";
                        status = "disable";
                    }
                    {
                        criteria = "Samsung Electric Company Odyssey G93SC HNTWC01167";
                        scale = 1.0;
                        status = "enable";
                        mode = "5120x1440@60Hz";
                    }
                ];
            }
            {
                profile.name = "docked-at-work";
                profile.outputs = [
                    {
                        criteria = "eDP-1";
                        scale = 1.0;
                        mode = "1920x1200@60Hz";
                        status = "disable";
                    }
                    {
                        criteria = "TBD";
                        scale = 1.0;
                        status = "enable";
                        mode = "5120x1440@60Hz";
                    }
                ];
            }
        ];
    };
}

