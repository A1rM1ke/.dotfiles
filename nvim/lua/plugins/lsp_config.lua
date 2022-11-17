-- LSP Mappings
local on_attach = function(client, bufnr)
    print("Attached")
    local bufopts = { noremap = true, silent = true, buffer=bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<Leader>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
require('lspconfig')['clangd'].setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require('lspconfig')['jedi_language_server'].setup {
    on_attach = on_attach,
    capabilities = capabilities
}

--[[
require('lspconfig')['rust_analyzer'].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        ['rust_analyzer'] = {}
    }
}
]]

require('lspconfig')['gopls'].setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require('lspconfig')['sumneko_lua'].setup {
    on_attach = on_attach,
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                    version = 'LuaJIT',
                },
            diagnostics = {
            -- Get the language server to recognize the `vim` global
                globals = {'vim'},
            },
            workspace = {
            -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
}

require('lspconfig')['tsserver'].setup{
    on_attach = on_attach,
}
