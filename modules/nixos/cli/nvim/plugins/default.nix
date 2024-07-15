{
  imports = [
    ./lazygit.nix
  ];

  programs.nixvim = {
    colorschemes.tokyonight = {
      enable = true;
    };
  };
}
