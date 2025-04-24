{ pkgs, ... }:
{
  home.packages = with pkgs;[
    sipcalc
  ];
}
