require('nvim-tree').setup({
            view = {
                adaptive_size = true,
            },
            filters = {
                dotfiles = true,
            }
})

vim.keymap.set('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
