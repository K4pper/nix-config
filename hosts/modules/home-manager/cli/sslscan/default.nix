{ pkgs, ... }:
{
  home.packages = with pkgs;[
    sslscan
  ];
}
