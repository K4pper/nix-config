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
    extraConfigLua = ''
      local bicep_lsp_bin = "/usr/local/bin/bicep-langserver/Bicep.LangServer.dll"
      require'lspconfig'.bicep.setup{
      cmd = { "dotnet", bicep_lsp_bin };
    }
    '';
  };
}
