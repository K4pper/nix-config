{
  imports = [
    ./lazygit.nix
    ./neo-tree.nix
    ./lualine.nix
    ./treesitter.nix
  ];

  programs.nixvim = {
    colorschemes.tokyonight = {
      enable = true;
    };
  };
}
