{...}:
let
  settings = builtins.readFile ./config.jsonc;
in
{
  programs.waybar = {
    enable = true;
    settings = builtins.fromJSON settings;
    style = ./style.css;
  };
}
