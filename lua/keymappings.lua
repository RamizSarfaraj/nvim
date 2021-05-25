local utils = require("utils")
local map = utils.keymap

vim.g.mapleader = " "   -- space as leader

map("i", "kj", "<Esc>") -- use kj to go normal mode
map("v", "kj", "<Esc>") -- use kj to go normal mode

map("n", ";", ":")      -- use ; to activate command mode

map("n", "<leader>s", ":w<CR>") -- use ;w to save
map("n", "<leader>w", ":wq<CR>") -- use ;w to save and quit
map("n", "<leader>q", ":q!<CR>") -- use ;w to quit without saving

-- Better split switching
map("n", "<C-J>", "<C-W>j")
map("n", "<C-K>", "<C-W>k")
map("n", "<C-H>", "<C-W>h")
map("n", "<C-L>", "<C-W>l")

--yank util the end of line
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
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', {noremap = true, silent = true})

-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})
