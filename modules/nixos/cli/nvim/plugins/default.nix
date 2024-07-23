{
  imports = [
    ./lazygit.nix
    ./neo-tree.nix
    ./lualine.nix
    ./treesitter.nix
    ./bufferline.nix
    ./telescope.nix
    ./lsp.nix
  ];

  programs.nixvim = {
    colorschemes.tokyonight = {
      enable = true;
    };
  };
}
