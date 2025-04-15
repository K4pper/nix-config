{ pkgs, ... }:
{
  home.packages = with pkgs;[
    bicep
  ];
}
