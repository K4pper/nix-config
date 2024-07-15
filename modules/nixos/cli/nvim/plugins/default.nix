{
  imports = [
    ./lazygit.nix
    ./neo-tree.nix
    ./lualine.nix
  ];

  programs.nixvim = {
    colorschemes.tokyonight = {
      enable = true;
    };
  };
}
