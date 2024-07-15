{
  programs.nixvim = {
    plugins.treesitter = {
      enable = true;
      nixvimInjections = true;
      folding = true;
      settings = {
        highlight.enable = true;
        indent.enable = true;
        ensure_installed = "'nix', 'c', 'markdown', 'rust', 'yaml', 'docker', 'helm', 'rust', 'json', 'bicep'";
      };
    };
  };
}
