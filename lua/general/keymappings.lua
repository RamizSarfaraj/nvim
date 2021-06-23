local utils = require("utils")
local map = utils.keymap

vim.cmd[[ nmap <Space> <NOP>]]

vim.g.mapleader = " "   -- space as leader


map("i", "kj", "<Esc>") -- use kj to go normal mode
map("v", "kj", "<Esc>") -- use kj to go normal mode

map("n", ";", ":")      -- use ; to activate command mode
map("v", ";", ":")      -- use ; to activate command mode

map("n", ";w", ":w<CR>") -- use ;w to save
map("n", ";q", ":wq<CR>") -- use ;w to save and quit
map("n", ";1", ":q!<CR>") -- use ;w to quit without saving

-- Better split switching
map("n", "<M-j>", "<C-W>j")
map("n", "<M-k>", "<C-W>k")
map("n", "<M-h>", "<C-W>h")
map("n", "<M-l>", "<C-W>l")

--yank utilMthe end of line
map('n', 'Y', 'y$', { noremap = true })
-- split
map("n", "|", ":vsp<CR>")
map("n", "-", ":sp<CR>")

-- resize split window
map("n", "<C-right>", ":vertical resize +2<CR>")
map("n", "<C-left>", ":vertical resize -2<CR>")
map("n", "<C-up>", ":resize +2<CR>")
map("n", "<C-down>", ":resize -2<CR>")

-- Move selected line / block of text in visual mode
map('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
map('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

-- better indenting
map('v', '<', '<gv', {noremap = true, silent = true})
map('v', '>', '>gv', {noremap = true, silent = true})
