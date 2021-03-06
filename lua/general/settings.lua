local cmd = vim.cmd

cmd("syntax on")
cmd("filetype plugin indent on")

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
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.scrolloff = 5
vim.o.shiftround = true

vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.wrap = false
vim.wo.numberwidth = 2
vim.wo.cursorline = true
vim.wo.cursorcolumn = false

cmd[[set ts=4 sw=4 sts=4 et]]
vim.bo.smartindent = true

-- file extension specific tabbing
cmd[[autocmd Filetype html,css setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2]]
cmd[[autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4]]

cmd[[
  set list listchars=tab:\ \ ,trail:·,nbsp:·
  set inccommand=split
  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*.,*/.DS_Store,*/node_modules/*

  autocmd BufEnter * silent! lcd %:p:h

  autocmd BufWritePre * :%s/\s\+$//e

  autocmd BufNewFile,BufReadPost *.js,*.ts,*.tsx setl colorcolumn=80,120

  autocmd InsertEnter * norm zz

  au TextYankPost * lua vim.highlight.on_yank {on_visual = true}
]]
