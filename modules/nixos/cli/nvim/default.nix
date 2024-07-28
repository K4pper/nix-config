{...}:
{
  imports = [
    ./options.nix
    ./plugins
    ./keymappings.nix
    ./autocommands.nix
  ];
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    vimdiffAlias = true;
    viAlias = true;
    vimAlias = true;
  };
}
