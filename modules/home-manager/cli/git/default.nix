{pkgs, ...}:
{
  programs.git = {
    enable = true;
    userName = "Kasper Therkelsen";
    userEmail = "kasper@kaspertherkelsen.com";
    extraConfig = {
        push.autoSetupRemote = true;
        gpg.format = "ssh";
        commit.gpgsign = true;
        rerere.enabled = true;
        delta.line-numbers = true;
        delta.side-by-side = true;
        user.signingkey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPwwR6p8TBJgQWRVzOiNlk0wwkJOGf1F+JX3GvT8O/4g";
        gpg.ssh.program = "${pkgs._1password-gui}/bin/op-ssh-sign";
      };
   };
}
