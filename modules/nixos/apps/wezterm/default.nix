{...}:
{
  programs.wezterm = {
    enable = true;
    enableZshIntegration = true;
    extraConfig =
    ''
      return{
        font = wezterm.font("JetBrains Mono"),
        font_size = 12.0,
        color_scheme = "Tokyo Night Storm",
      }
    '';
  };
}
