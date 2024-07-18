{ pkgs, ... }:
let
  json = builtins.readFile ./config.json;
  style = builtins.readFile ./style.css;
in
{
  services.swaync = {
    enable = true;
    settings = builtins.fromJSON json;
    style = style;
  };
  home.packages = with pkgs; [
    libnotify
  ];
}
