{
  programs.nixvim = {
    plugins.treesitter = {
      enable = true;
      folding = true;
      nixvimInjections = true;
      settings = {
        highlight = {
          additional_vim_regex_highlighting = true;
          enable = true;
        };
        indent = {
          enable = true;
        };
      };
    };
  };
}
