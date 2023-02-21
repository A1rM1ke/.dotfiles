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

require('lspconfig')['tsserver'].setup{
    on_attach = on_attach,
}

require('lspconfig')['texlab'].setup{
    on_attach = on_attach,
}
