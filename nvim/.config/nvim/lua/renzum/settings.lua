local set = vim.opt

set.relativenumber = true
set.number = true
set.compatible = false
set.timeoutlen = 200
set.scrolloff = 8
set.wildmenu = true
set.errorbells = false
set.title = true
set.tabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.incsearch = true
set.linebreak = true
set.cursorline = true
set.background = 'dark'
set.showcmd = true
set.showmode = false
set.autoread = true
set.splitbelow = true
set.updatetime = 100
set.completeopt = 'menu,menuone,noselect'

vim.options = {
    colorcolumn = '80,120'
}

vim.cmd[[
    syntax on
    filetype plugin on
]]
