{ pkgs, ... }:
{
    imports = [
        ./desktop.nix
        ./gaming.nix
        ./locale.nix
        ./sound.nix
        ./virtualization.nix
    ];
    config = {
        # Enable ZSH
        environment.shells = with pkgs; [ zsh ];
        users.defaultShell = pkgs.zsh;
        programs.zsh.enable = true;

        programs.git.enable = true;
    };
}
