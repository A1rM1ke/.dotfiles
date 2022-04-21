--Disable copilot default tab map
--Set copilot default tab map to custom map
vim.cmd[[
    let g:copilot_no_tab_map = v:true
    imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
    "let g:copilot_assume_mapped = 1
]]
