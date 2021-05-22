local utils = require("utils")
local map = utils.keymap

vim.g.mapleader = " "   -- space as leader

map("i", "kj", "<Esc>") -- use kj to go normal mode
map("v", "kj", "<Esc>") -- use kj to go normal mode

map("n", ";", ":")      -- use ; to activate command mode

map("n", ";w", ":w<CR>") -- use ;w to save
map("n", ";q", ":wq<CR>") -- use ;w to save and quit
map("n", "q1", ":q!<CR>") -- use ;w to quit without saving

-- Better split switching
map("n", "<C-J>", "<C-W>j")
map("n", "<C-K>", "<C-W>k")
map("n", "<C-H>", "<C-W>h")
map("n", "<C-L>", "<C-W>l")

-- split
map("n", "<M-v>", ":vsp<CR>")
map("n", "<M-h>", ":sp<CR>")

-- resize split window
map("n", "<C-right>", ":vertical resize +2<CR>")
map("n", "<C-left>", ":vertical resize -2<CR>")
map("n", "<C-up>", ":resize +2<CR>")
map("n", "<C-down>", ":resize -2<CR>")
