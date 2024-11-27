{lib, ...}:
let
  config = builtins.readFile ./starship.toml;
in
{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = builtins.fromTOML config;
  };
}
