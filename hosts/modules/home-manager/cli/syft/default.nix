{ pkgs, ... }:
{
  home.packages = with pkgs;[
    syft
  ];
}
