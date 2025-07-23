require 'lspconfig'.nil_ls.setup {
    settings = {
        ['nil'] = {
            formatting = { command = {"nixfmt" } },
        },
    },
}

require 'lspconfig'.lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = { globals = { 'vim' } },
        },
    },
}

require 'lspconfig'.docker_compose_language_service.setup {}

-- TODO: Install the LSP and configure it here
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#bicep
-- https://github.com/Azure/bicep/releases
local bicep_lsp_bin = os.getenv('BICEP_LANGSERVER')
require 'lspconfig'.bicep.setup {
    cmd = { "dotnet", bicep_lsp_bin },
    filetypes = { 'bicep', 'bicep-params' }
}
