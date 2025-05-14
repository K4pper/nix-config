{
  programs.nixvim = {
    plugins = {
      lsp = {
        enable = true;

        servers = {
          marksman.enable = true;
          clangd.enable = true;
          yamlls.enable = true;
          nixd.enable = true;
          gopls = {
            enable = true;
            autostart = true;
          };
          # To update the bicep language server go here: https://nix-community.github.io/nixvim/plugins/lsp/servers/bicep/index.html
          bicep = {
            enable = true;
            package = null;
            filetypes = [
              "bicep"
            ];
            autostart = true;
          };
        };
      };
    };
  };
}
