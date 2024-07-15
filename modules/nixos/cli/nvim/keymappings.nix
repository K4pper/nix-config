{
  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

    keymaps = [

      # Move to window with <ctrl> hjkl keys
      {
        action = "<C-w>h";
        key = "<C-h>"
      }
      {
        action = "<C-w>j";
        key = "<C-j>";
      }
      {
        action = "<C-w>k";
        key = "<C-k>";
      }
      {
        action = "<C-w>l";
        key = "<C-l>";
      }

      # Buffers
      {
        action = "<cmd>bprevious<cr>";
        key = "<S-h>";
      }
      {
        action = "<cmd>bnext<cr>";
        key = "<S-l>";
      }

      # Clear search with <esc>
      {
        action = "<cmd>noh<cr><esc>";
        key = "<esc>";
      }
    ];
  };
}
