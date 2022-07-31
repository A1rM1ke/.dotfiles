require('nvim-autopairs').setup{
    check_ts = true,
    ts_config = {
        lua = {'string'},-- it will not add a pair on that treesitter node
        rust = {'type_parameters'},
    }
}

--local Rule = require('nvim-autopairs.rule')
--local npairs = require('nvim-autopairs')
--local cond = require('nvim-autopairs.conds')

--[[
npairs.add_rule(
    Rule("<", ">", { "rust", "rs" })
)

npairs.add_rule(
    Rule("'", "'", { "rust", "rs" })
        :with_pair(cond.not_before_text('&'))
        :with_pair(cond.not_before_text('<'))
)

]]
