{ pkgs, ... }:
let
  bicepLanguageServer = pkgs.stdenv.mkDerivation rec {
    pname = "bicep-langserver";
    version = "0.36.177";

    src = pkgs.fetchurl {
      url = "https://github.com/Azure/bicep/releases/download/v${version}/bicep-langserver.zip";
      sha256 = "sha256-2W/hRGfKo7cvRv3SDRVe3Pd5nVat36QrC3rjOAqxSNw=";
    };

    buildInputs = [ pkgs.unzip ];

    unpackPhase = "unzip $src -d $out";
    installPhase = ''
      mkdir -p $out/bin
      cp -r * $out/bin
    '';

  };
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
      bicepLanguageServer
    ];
    extraLuaConfig = ''
      ${builtins.readFile ./settings.lua}
      ${builtins.readFile ./keybinds.lua}
    '';
    plugins = with pkgs.vimPlugins; [
      nvim-web-devicons
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
    ];
  };
  home.sessionVariables.BICEP_LANGSERVER = "${bicepLanguageServer}/Bicep.LangServer.dll";
}
