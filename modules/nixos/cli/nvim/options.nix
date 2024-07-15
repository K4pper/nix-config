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
      termguicolors = true;
      cursorline = true;
      expandtab = true;
      tabstop = "2";
    };
  };
}
