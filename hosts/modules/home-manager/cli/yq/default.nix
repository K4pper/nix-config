{pkgs, ... }:
{
  home.packages = with pkgs; [
    yq-go
  ];
}
