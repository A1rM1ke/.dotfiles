--Set leader to space
vim.g.mapleader = ' '

--Disable Arrow Keys
vim.keymap.set('n', '<up>', '<nop>')
vim.keymap.set('n', '<down>', '<nop>')
vim.keymap.set('n', '<left>', '<nop>')
vim.keymap.set('n', '<right>', '<nop>')

--Map CTRL-S to <ESC>
vim.keymap.set({'n', 'i', 'v'}, '<C-s>', '<ESC>')

--Make Y do the logical thing
vim.keymap.set('n', 'Y', 'v$y<ESC>', {desc = 'Yank until end of the line'})

--Window Navigation Maps
vim.keymap.set('n', '<C-h>', '<C-W>h')
vim.keymap.set('n', '<C-j>', '<C-W>j')
vim.keymap.set('n', '<C-k>', '<C-W>k')
vim.keymap.set('n', '<C-l>', '<C-W>l')
