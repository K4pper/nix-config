{ pkgs, ... }:
{
  home.file.".config/dive/dive.yaml" = {
    text = builtins.readFile ./dive.yaml;
    executable = false;
  };
  home.packages = with pkgs;[
    dive
  ];
}
