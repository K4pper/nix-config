{ ... }:
{
  home.file.".config/hyprlock/hyprlock.png" = {
    source = ./hyprlock.png;
    executable = false;
  };
  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
        no_fade_in = true;
        no_fade_out = true;
        grace = 0;
        disable_loading_bar = true;
        hide_cursor = false;
      };
      background = [
      {
        path = "screenshot";
        blur_passes = 2;
        blur_size = 7;
        contrast = 0.8916;
        brightness = 0.8172;
        vibrancy = 0.1696;
        vibrancy_darkness = 0.0;
      }
      ];
      input-field = [
      {
        size = "250, 60";
        outline_thickness = 2;
        dots_size = 0.2;
        dots_spacing = 0.35;
        dots_center = true;
        outer_color = "rgba(0, 0, 0, 0)";
        inner_color = "rgba(0, 0, 0, 0.2)";
        font_color = "rgba(255, 255, 255, 255)";
        fade_on_empty = false;
        rounding = -1;
        check_color = "rgb(204, 136, 34)";
        placeholder_text = "<i><span foreground='##cdd6f4'>Input Password... </span></i>";
        hide_input = false;
        position = "0, -200";
        halign = "center";
        valign = "center";
      }
      ];
      label = [
        {
          text = "$TIME";
          color = "rgba(242, 243, 244, 0.75)";
          font_size = 95;
          font_family = "JetBrains Mono Extrabold";
          position = "-30, -200";
          halign = "center";
          valign = "top";
        }
      ];
    };
  };
}

