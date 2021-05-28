
-- NERDCommenter
local cmd = vim.cmd

cmd([[
    nnoremap gcc <Plug>NERDCommenterToggle
    vnoremap gcc <Plug>NERDCommenterToggle<CR>gv
]])
