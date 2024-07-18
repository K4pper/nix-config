_:
let
  theme = builtins.readFile ./theme.toml;
in
{
  home.file.".config/yazi/flavors/tokyo-night.yazi/flavor.toml" = {
    text = builtins.readFile ./flavors/tokyo-night.yazi/flavor.toml;
    executable = false;
  };
  programs.yazi = {
    enable = true;
    theme = builtins.fromTOML theme;
  };
}
