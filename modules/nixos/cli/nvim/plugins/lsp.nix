{
  programs.nixvim = {
    plugins = {
      lsp = {
        enable = true;

        servers = {
          rust_analyzer = {
            enable = true;
            installCargo = true;
            installRustc = true;
          };
          marksman.enable = true;
          clangd.enable = true;
        };
      };
    };
  };
}
