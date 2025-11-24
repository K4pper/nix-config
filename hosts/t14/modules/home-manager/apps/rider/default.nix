{ pkgs, ... }:
{
  home.packages = with pkgs; [
    jetbrains.rider
  ];
  home.file."/.ideavimrc" = {
    text = builtins.readFile ./.ideavimrc;
    executable = false;
  };
}
