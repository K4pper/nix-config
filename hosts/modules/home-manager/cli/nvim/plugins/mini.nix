{
  programs.nixvim = {
    plugins.mini = {
      enable = true;
      modules = {
        icons = {
          style = "glyph";
        };
        pairs = {
          modes = {
            insert = true;
            command = false;
            terminal = false;
          };
        };
        surround = {
          mappings = {
            add = "gsa";
            delete = "gsd";
            highlight = "gsh";
            replace = "gsr";
          };
        };
      };
      mockDevIcons = true;
    };
  };
}
