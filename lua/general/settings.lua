local utils = require("utils")
local opt = utils.opt

vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")

vim.o.title = true
vim.o.mouse = "a"
vim.o.showmode = false
vim.o.swapfile = false
vim.o.backup = false
vim.o.ttyfast = true
vim.o.autowrite = true
vim.o.autoread = true
vim.o.updatetime = 300
vim.o.cmdheight = 1
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.backspace = "indent,eol,start"
vim.o.shortmess = vim.o.shortmess .. "c"
vim.o.hidden = true
vim.o.showtabline = 2
vim.o.clipboard="unnamed,unnamedplus"

vim.o.incsearch = true
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.scrolloff = 5
vim.o.shiftround = true

vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.wrap = false
vim.wo.numberwidth = 3
vim.wo.cursorline = true
vim.wo.cursorcolumn = true

vim.cmd[[
set ts=2 sw=2 sts=2 et
]]
vim.bo.smartindent = true

vim.cmd("set inccommand=split") -- make substitution work in realtime
vim.cmd([[set list listchars=tab:\ \ ,trail:·,nbsp:·]])
vim.cmd([[set wildignore+=*/.git/*,*/.hg/*,*/.svn/*.,*/.DS_Store,*/node_modules/*]])

-- set working directory to current buffer's directory
vim.cmd([[autocmd BufEnter * silent! lcd %:p:h]])

-- remove whitespace on save
vim.cmd([[autocmd BufWritePre * :%s/\s\+$//e]])

-- color columns
vim.cmd([[autocmd BufNewFile,BufReadPost *.js,*.ts,*.tsx setl colorcolumn=80,120]])

vim.cmd([[autocmd InsertEnter * norm zz]]) --automatically center the screen upon enterring insert mode

--highlight while yanking
vim.cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = true}'
