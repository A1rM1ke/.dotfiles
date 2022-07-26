require('nvim-autopairs').setup{}

local Rule = require('nvim-autopairs.rule')
local npairs = require('nvim-autopairs')
local cond = require('nvim-autopairs.conds')

npairs.add_rule(
    Rule("<", ">", { "rust", "rs" })
)

npairs.add_rule(
    Rule("'", "'", { "rust", "rs" })
        :with_pair(cond.not_before_text('&'))
        :with_pair(cond.not_before_text('<'))
)

