{pkgs, ... }:
{
  home.packages = with pkgs;[
    kubelogin
  ];
}
