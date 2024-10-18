{
  imports = [
    ./lazygit.nix
    ./neo-tree.nix
    ./lualine.nix
    ./treesitter.nix
    ./bufferline.nix
    ./telescope.nix
    ./lsp.nix
    ./auto-pair.nix
    ./web-devicons.nix
  ];

  programs.nixvim = {
    colorschemes.dracula = {
      enable = true;
    };
  };
}
