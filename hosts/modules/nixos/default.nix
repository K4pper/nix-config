{ pkgs, ... }:
{
  imports = [
    ./locale.nix
    ./sound.nix
    ./virtualisation.nix
    ./desktop.nix
  ];

  config = {
    # Enable zsh
    environment.shells = with pkgs; [ zsh ];
    environment.localBinInPath = true;

   users.defaultUserShell = pkgs.zsh;
   programs.zsh.enable = true;

   # Enable git
   programs.git.enable = true;
  };
}
