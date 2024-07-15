{
  programs.nixvim = {
    plugins.treesitter = {
      enable = true;
      nixvimInjections = true;
      folding = true;
      settings = {
      };
    };
  };
}
