local ls = require('luasnip')

local s = ls.s
local t = ls.t
local i = ls.i

local d = ls.dynamic_node
local c = ls.choice_node
local f = ls.function_noed
local sn = ls.snippet_node
local rep = require('luasnip.extras').rep

local fmt = require('luasnip.extras.fmt').fmt

local snippets, autosnippets = {}, {}
--[[

local testsnippet = s("testsnippet", {
    t("Test Snippet Inserted"),
    i(1, "placeholder_text"),
})

local secondsnippet = s("secondsnippet",
    fmt(--[[
    local {} = function({})
        {}
    end
    -]-], {i(1, "myVar"), i(2, "myArg"), i(3, "--TODO: Something")})
)
]]

table.insert(snippet_table, testsnippet)
table.insert(snippet_table, secondsnippet)

return snippet_table
