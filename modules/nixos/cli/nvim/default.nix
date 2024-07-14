{...}:
{
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    vimdiffAlias = true;
    viAlias = true;
    vimAlias = true;
  imports = [
    # General Config
    ./settings.nix
    ];
  };
}
