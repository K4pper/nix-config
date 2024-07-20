{
  programs.nixvim = {
    keymaps = [
      {
        mode = "n";
        key = "<leader>ff";
        action = "<cmd>Telescope find_files<CR>";
      }
    ];
    plugins.telescope = {
      enable = true;
    };
  };
}
