{
  programs.nixvim = {
    plugins.bufferline = {
      enable = true;
      settings = {
        options = {
          always_show_bufferline = true;
          color_icons = true;
        };
      };
    };
  };
}
