{...}:
{
  programs.git = {
    enable = true;
    userName = "Kasper Therkelsen";
    userEmail = "kasper@kaspertherkelsen.com"
    extraConfig = {
        push.autoSetupRemote = true;
      };
  };
}
