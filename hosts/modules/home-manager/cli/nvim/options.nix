{
  programs.nixvim = {
    clipboard = {
      register = "unnamedplus";
    };

    opts = {
      number = true;
      relativenumber = true;
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
  };
}
