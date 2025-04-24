{
  programs.nixvim = {
    plugins.cmp = {
      enable = true;
      autoEnableSources = true;
      settings.sources = [
        { name = "nvim_lsp"; }
        { name = "path"; }
        { name = "buffer"; }
        { name = "luasnip"; }
      ];
      settings.mapping = {
        __raw = ''
          cmp.mapping.preset.insert({
            ['<CR>'] = cmp.mapping.confirm({ select = false }),
          })
        '';
      };
    };
  };
}
