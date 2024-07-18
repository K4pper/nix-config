{...}:
{
  programs.wezterm = {
    enable = true;
    enableZshIntegration = true;
    extraConfig =
    ''
      return{
        font = wezterm.font("JetBrains Mono"),
        font_size = 10.0,
        color_scheme = "Dracula",
        hide_tab_bar_if_only_one_tab = true,
        enable_wayland = false,
      }
    '';
  };
}
