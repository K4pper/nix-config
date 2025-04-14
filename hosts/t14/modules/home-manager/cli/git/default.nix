{pkgs, ...}:
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
        user.signingkey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHD/4RuNDIN7KQhAHV4ZIZNnLe1sxS7ykMdS8xrcvykj";
        gpg.ssh.program = "${pkgs._1password-gui}/bin/op-ssh-sign";
      };
   };
}

