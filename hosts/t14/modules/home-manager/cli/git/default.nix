{ ... }:
{
  programs.git = {
    enable = true;
    userName = "Kasper Therkelsen";
    userEmail = "kath@aura.dk";
    extraConfig = {
        push.autoSetupRemote = true;
        gpg.format = "ssh";
        commit.gpgsign = true;
        rerere.enabled = true;
        delta.line-numbers = true;
        delta.side-by-side = true;
        user.signingkey = "~/.ssh/id_ed25519.pub";
      };
   };
}

