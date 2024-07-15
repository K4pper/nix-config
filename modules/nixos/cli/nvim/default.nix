{...}:
{
  imports = [
    ./options.nix
    ./plugins
    ./keymappings.nix
  ];
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    vimdiffAlias = true;
    viAlias = true;
    vimAlias = true;
  };
}
