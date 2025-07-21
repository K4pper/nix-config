{
  programs.nixvim = {
    clipboard = {
      register = "unnamedplus";
    };

    opts = {
      number = true;
      relativenumber = true;
      scrolloff = 25;
      mouse = "a";
      ignorecase = true;
      smartcase = true;
      smartindent = true;
      autoindent = true;
      shiftwidth = 2;
      termguicolors = true;
      cursorline = true;
      expandtab = true;
      tabstop = 2;
      foldlevel = 99;
      list = true;
      linebreak = true;
    };
    diagnostic = {
      settings = {
        virutal_lines = {
          enable = true;
          current_line = true;
        };
        virtual_text = false;
        jump = {
          severity.__raw = "vim.diagnostic.severity.WARN";
        };
      };
    };
  };
}
