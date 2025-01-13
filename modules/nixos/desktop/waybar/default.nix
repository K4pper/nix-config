{...}:
let
  settings = builtins.readFile ./config.json;
in
{
  home.file.".config/waybar/rose-pine.css" = {
    text = builtins.readFile ./rose-pine.css;
    executable = false;
  };
  programs.waybar = {
    enable = true;
    settings = builtins.fromJSON settings;
    style = ./style.css;
  };
}
