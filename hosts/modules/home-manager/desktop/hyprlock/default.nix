{ ... }:
{
  home.file.".config/hypr/hyprlock.png" = {
    source = ./hyprlock.png;
    executable = false;
  };
  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
        no_fade_in = false;
        grace = 0;
      };
      background = [
      {
        path = "~/.config/hypr/hyprlock.png";
        blur_passes = 2;
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
        dots_spacing = 0.2;
        dots_center = true;
        outer_color = "rgba(0, 0, 0, 0)";
        inner_color = "rgba(100, 114, 125, 0.4)";
        font_color = "rgba(200, 200, 200)";
        fade_on_empty = false;
        placeholder_text = "<i><span foreground='##cdd6f4'>Input Password... </span></i>";
        hide_input = false;
        position = "0, -150";
        halign = "center";
        valign = "center";
      }
      ];
      label = [
        # TIME
        {
          text = "$TIME";
          color = "rgba(242, 243, 244, 0.75)";
          font_size = 95;
          font_family = "JetBrains Mono Extrabold";
          position = "0, -370";
          halign = "center";
          valign = "top";
        }
        # DATE
        {
          text = ''cmd[update:1000] echo -e "$(date +"%A, %d %B")"'';
          color = "rgba(216, 222, 233, 0.70)";
          font_size = 30;
          font_family = "JetBrains Mono Extrabold";
          position = "0, 170";
          halign = "center";
          valign = "center";
        }
      ];
    };
  };
}

