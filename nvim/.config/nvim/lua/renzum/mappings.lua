local opts = { noremap = true }
--Set leader to space
vim.g.mapleader = ' '

--Disable Arrow Keys
vim.keymap.set('n', '<up>', '<nop>', opts)
vim.keymap.set('n', '<down>', '<nop>', opts)
vim.keymap.set('n', '<left>', '<nop>', opts)
vim.keymap.set('n', '<right>', '<nop>', opts)

--Map CTRL-S to <ESC>
vim.keymap.set({'n', 'i', 'v'}, '<C-s>', '<ESC>', opts)

--Make Y do the logical thing
vim.keymap.set('n', 'Y', 'v$y<ESC>', { noremap = true, desc = 'Yank until end of the line'})

--Window Navigation Maps
--Normal Mode
vim.keymap.set('n', '<M-h>', '<C-W>h', opts)
vim.keymap.set('n', '<M-j>', '<C-W>j', opts)
vim.keymap.set('n', '<M-k>', '<C-W>k', opts)
vim.keymap.set('n', '<M-l>', '<C-W>l', opts)
--Terminal Mode
vim.keymap.set('t', '<M-h>', [[<C-\><C-N><C-W>h]], opts)
vim.keymap.set('t', '<M-j>', [[<C-\><C-N><C-W>j]], opts)
vim.keymap.set('t', '<M-k>', [[<C-\><C-N><C-W>k]], opts)
vim.keymap.set('t', '<M-l>', [[<C-\><C-N><C-W>l]], opts)
--Visual
vim.keymap.set('v', '<M-h>', '<Esc><C-W>h', opts)
vim.keymap.set('v', '<M-j>', '<Esc><C-W>j', opts)
vim.keymap.set('v', '<M-k>', '<Esc><C-W>k', opts)
vim.keymap.set('v', '<M-l>', '<Esc><C-W>l', opts)
--Insert
vim.keymap.set('i', '<M-h>', '<Esc><C-W>h', opts)
vim.keymap.set('i', '<M-j>', '<Esc><C-W>j', opts)
vim.keymap.set('i', '<M-k>', '<Esc><C-W>k', opts)
vim.keymap.set('i', '<M-l>', '<Esc><C-W>l', opts)

vim.keymap.set('n', '<Leader>e',':Lexplore<CR>', {noremap = true, silent = true} )

vim.keymap.set('v', '>', '>gv', {noremap = true, silent = true })
vim.keymap.set('v', '<', '<gv', { noremap = true, silent = true })

vim.keymap.set('n', '<Leader>n', ':bn<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>p', ':bp<CR>', { noremap = true, silent = true })

--vim.keymap.set('n', '<Leader>t', ':split<CR>:terminal<CR>')

vim.keymap.set('t', '<ESC><ESC>', [[<C-\><C-n>]], { noremap = true })
