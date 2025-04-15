{ pkgs, ... }:
{
  home.packages = with pkgs;[
    kubectl-tree
  ];
}
