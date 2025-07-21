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
      };
      mockDevIcons = true;
    };
  };
}
