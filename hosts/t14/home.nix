{ pkgs, ... }:

{

  imports = [
    ./modules/home-manager
    ../modules/home-manager
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home = {
    stateVersion = "24.11";

    username = "kath";
    homeDirectory = "/home/kath";

    packages = with pkgs; [
      brightnessctl
    ];

  };
  nixpkgs.config.allowUnfree = true;

  # Kanshi
  services.kanshi = {
    enable = true;
    systemdTarget = "hyprland-session.target";
    settings = [
      {
        profile.name = "undocked";
        profile.outputs = [
          {
            criteria = "eDP-1";
            scale = 1.0;
            mode = "1920x1200@60.00100";
            status = "enable";
          }
        ];
      }
      {
        profile.name = "docked-at-home";
        profile.outputs = [
          {
            criteria = "eDP-1";
            status = "disable";
          }
          {
            criteria = "Samsung Electric Company Odyssey G93SC HNTWC01167";
            status = "enable";
          }
        ];
      }
      {
        profile.name = "docked-at-work";
        profile.outputs = [
          {
            criteria = "eDP-1";
            status = "disable";
          }
          {
            criteria = "Dell Inc. Dell U4924DW B2CT0S3";
            status = "enable";
          }
        ];
      }
    ];
  };
}
