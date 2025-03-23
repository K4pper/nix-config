{ ... }:
{
  homebrew = {
    enable = true;
    casks = [
      "nikitabobko/tap/aerospace"
      "firefox"
      "wireshark"
      "shottr"
      "1password"
      "discord"
      "zoom"
      "visual-studio-code"
      "alacritty"
      "docker"
      "obsidian"
      "slack"
      "signal"
      "windows-app"
      "visual-studio-code"
      "sublime-text"
      "logi-options+"
    ];
    onActivation = {
      upgrade = true;
      autoUpdate = true;
    };
  };

}
