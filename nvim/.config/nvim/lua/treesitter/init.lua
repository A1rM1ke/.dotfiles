require'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = {"c", "python", "latex", "html", "css", "javascript", "lua", "rust"},

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,

  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
}

-- Sets neovim's folding options to use Treesitter
-- Starting fold level is set to 99, such that no sections are folded on start
vim.cmd[[
    set foldlevelstart=99
    set foldmethod=expr
    set foldexpr=nvim_treesitter#foldexpr()

    "Fold traversal made less weird
    nnoremap z[ [z
    nnoremap z] ]z

    "Save and load folds
    augroup remember_folds
        autocmd!
        autocmd BufWinLeave *.* silent! mkview
        autocmd BufWinEnter *.* silent! loadview
    augroup END
]]
