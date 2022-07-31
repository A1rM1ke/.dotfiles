local ls = require('luasnip')

--Load snippets from .config/nvim/snippets lazily
require("luasnip.loaders.from_lua").lazy_load({ paths = "./snippets"})

ls.config.set_config({
    history = true,
    updateevents = "TextChanged,TextChangedI",
    --enable_autosnippets = true,
})

--The maps are taken from TJ's luasnip video
--Ctrl-K jumps forward
--Ctrl-J jumps back
--Ctrl-L cycles through the list
vim.keymap.set(
    { "i", "s" },
    "<C-k>",
    function()
        if ls.expand_or_jumpable() then
            ls.expand_or_jump()
        end
    end,
    { silent = true }
)

vim.keymap.set(
    { "i", "s" },
    "<C-j>",
    function()
        if ls.jumpable(-1) then
            ls.jump(-1)
        end
    end,
    { silent = true }
)

vim.keymap.set(
    { "i", "s" },
    "<C-l>",
    function()
        if ls.choice_active() then
            ls.change_choice(1)
        end
    end
)
