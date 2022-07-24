--Enable formatoptions for all buffers
vim.api.nvim_create_autocmd(
    { "BufWinEnter", "BufNewFile", "BufRead" },
    {
        pattern='*',
        command='setlocal formatoptions=tqjn1'
    }
)

--Change AutoPairs for Rust edge cases
vim.api.nvim_create_autocmd(
    "FileType",
    {
        pattern = {"*.rs"},
        command = "let b:AutoPairs = AutoPairsDefine({\"&\'\" : \"\", \"<\'\" : \">\"})"
    }
)

--Enable Spellcheck in LaTeX, Markdown, and Text files
vim.api.nvim_create_autocmd(
    { "BufRead", "BufNewFile" },
    {
        pattern = { "*.txt", "*.md", "*.tex" },
        command = "setlocal spell"
    }
)
