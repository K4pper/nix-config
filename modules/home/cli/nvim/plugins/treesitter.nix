{
  programs.nixvim = {
    plugins.treesitter = {
      enable = true;
      nixvimInjections = true;
      folding = true;
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
