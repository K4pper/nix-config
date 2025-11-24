{ pkgs, ... }:
let
  bicepLanguageServer = pkgs.stdenv.mkDerivation rec {
    pname = "bicep-langserver";
    version = "0.39.26";

    src = pkgs.fetchurl {
      url = "https://github.com/Azure/bicep/releases/download/v${version}/bicep-langserver.zip";
      sha256 = "sha256-2bBdit3E9I70iJFLsK2kQM5XekTx2dX9a/+kvFKszB4=";
    };

    buildInputs = [ pkgs.unzip ];

    unpackPhase = "unzip $src -d $out";
    installPhase = ''
      mkdir -p $out/bin
      cp -r * $out/bin
    '';

  };
  toLua = str: "lua << EOF\n${str}\nEOF\n";
  toLuaFile = file: "lua << EOF\n${builtins.readFile file}\nEOF\n";
in
{
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    defaultEditor = true;
    extraPackages = with pkgs; [
      nixfmt-rfc-style
      nil
      lua-language-server
      docker-compose-language-service
      bicepLanguageServer
    ];
    extraLuaConfig = ''
      ${builtins.readFile ./settings.lua}
      ${builtins.readFile ./keybinds.lua}
    '';
    plugins = with pkgs.vimPlugins; [
      {
        plugin = nvim-cmp;
        config = toLuaFile ./plugins/cmp.lua;
      }
      cmp-buffer
      cmp-path
      cmp-nvim-lsp
      cmp_luasnip
      luasnip

      nvim-web-devicons
      plenary-nvim
      {
        plugin = nvim-autopairs;
        config = toLua "require(\"nvim-autopairs\").setup()";
      }
      {
        plugin = rose-pine;
        config = "colorscheme rose-pine";
      }
      {
        plugin = nvim-lspconfig;
        config = toLuaFile ./plugins/lsp.lua;
      }
      {
        plugin = which-key-nvim;
      }
      {
        plugin = lualine-nvim;
        config = toLuaFile ./plugins/lualine.lua;
      }
      {
        plugin = telescope-nvim;
        config = toLuaFile ./plugins/telescope.lua;
      }
      {
        plugin = lazygit-nvim;
      }
      {
        plugin = oil-nvim;
        config = toLuaFile ./plugins/oil.lua;
      }
      {
        plugin = (nvim-treesitter.withPlugins (p: [
          p.tree-sitter-nix
          p.tree-sitter-bash
          p.tree-sitter-lua
          p.tree-sitter-json
          p.tree-sitter-markdown
          p.tree-sitter-markdown-inline
          p.tree-sitter-yaml
          p.tree-sitter-dockerfile
          (pkgs.tree-sitter.buildGrammar {
            language = "bicep";
            version = "bff5988";
            src = pkgs.fetchFromGitHub {
              owner = "tree-sitter-grammars";
              repo = "tree-sitter-bicep";
              rev = "bff59884307c0ab009bd5e81afd9324b46a6c0f9";
              hash = "sha256-+qvhJgYqs8aj/Kmojr7lmjbXmskwVvbYBn4ia9wOv3k=";
            };
          })
        ]));
        config = toLuaFile ./plugins/treesitter.lua;
      }
    ];
  };
  home.sessionVariables.BICEP_LANGSERVER = "${bicepLanguageServer}/Bicep.LangServer.dll";
}
