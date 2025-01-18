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
        users.defaultUserShell = pkgs.zsh;
        programs.zsh.enable = true;

        # Git
        programs.git.enable = true;

        # DBUS
        services.dbus.implementation = "broker";

    };
}
