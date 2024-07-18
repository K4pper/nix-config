_:
let
  theme = builtins.readFile ./theme.toml;
in
{
  home.file.".config/yazi/flavors/tokyo-night/flavor.toml" = {
    text = builtins.readFile ./flavor.toml;
    executable = false;
  };
  programs.yazi = {
    enable = true;
    theme = builtins.fromTOML theme;
  };
}
