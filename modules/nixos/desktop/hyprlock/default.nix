_:
{
  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
        hide_cursor = true;
        ignore_empty_input = true;
      };
      background = [
      {
        path = "screenshot";
        blur_passes = 3;
        blur_size = 8;
      }
      ];
    };
  };
}
