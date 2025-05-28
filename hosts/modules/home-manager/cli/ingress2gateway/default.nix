{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ingress2gateway
  ];
}
