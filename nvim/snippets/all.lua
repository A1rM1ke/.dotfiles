local ls = require('luasnip')

local s = ls.s
local t = ls.t

local testsnippet = s("testsinppet", {
    t("Test Snippet Inserted")
})

return {testsnippet}

