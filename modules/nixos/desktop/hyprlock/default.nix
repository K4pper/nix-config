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
      input-field = [
      {
        size = "200, 50";
        position = "0, -80";
        monitor = "";
        dots_center = true;
        fade_on_empty = true;
      }
      ];
    };
  };
}
