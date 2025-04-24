{
  programs.nixvim = {
    plugins.telescope = {
      enable = true;
      keymaps = {
        "<leader>ff" = "find_files";
        "<leader>fg" = "live_grep";
      };
      settings = {
        find_files = {
          hidden = true;
        };
      };
    };
  };
}
