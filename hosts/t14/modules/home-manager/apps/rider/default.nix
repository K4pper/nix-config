{ ... }:
{
  home.file."/.ideavimrc" = {
    text = builtins.readFile ./.ideavimrc;
    executable = false;
  };
}
