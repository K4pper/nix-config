{
  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

    keymaps = [
      {
        action = "<cmd>bprevious<cr>";
        key = "<S-h>";
      };
    ];
  };
}
