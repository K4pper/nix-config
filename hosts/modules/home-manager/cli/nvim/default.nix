{ ... }:
{
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    defaultEditor = true;
    extraLuaConfig = ''
      ${builtins.readFile ./settings.lua}
    '';
    plugins = with pkgs.vimPlugins; [
      {
        plugin = rose-pine;
        config = "colorscheme rose-pine";
      }
    ];
  };
}
