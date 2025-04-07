{
  programs.nixvim = {
    keymaps = [
      {
        mode = "n";
        key = "<leader>lg";
        action = "<cmd>LazyGit<cr>";
      }
    ];

    plugins.lazygit = {
      enable = true;
    };
  };
}
