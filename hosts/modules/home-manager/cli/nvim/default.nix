{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    defaultEditor = true;
    extraLuaConfig = ''
      ${builtins.readFile ./settings.lua}
      ${builtins.readFile ./keybinds.lua}
    '';
    plugins = with pkgs.vimPlugins; [
      {
        plugin = tokyonight-nvim;
        config = "colorscheme tokyonight-night";
      }
    ];
  };
}
