{
  imports = [
    ./lazygit.nix
    ./neo-tree.nix
  ];

  programs.nixvim = {
    colorschemes.tokyonight = {
      enable = true;
    };
  };
}
