# rose-pine is used multiple times, make this use variables instead
_:
let
  theme = builtins.readFile ./theme.toml;
in
{
  home.file.".config/yazi/flavors/rose-pine.yazi/flavor.toml" = {
    text = builtins.readFile ./flavors/rose-pine.yazi/flavor.toml;
    executable = false;
  };
  home.file.".config/yazi/rose-pine.tmTheme" = {
    text = builtins.readFile ./flavors/rose-pine.yazi/rose-pine.tmTheme;
    executable = false;
    };
  programs.yazi = {
    enable = true;
    theme = builtins.fromTOML theme;
  };
}
