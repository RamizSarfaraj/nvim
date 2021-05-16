-- getmetatable("").__index = function(str, i) return string.sub(str, i, i) end
--vim.o.termiguicolors = true

vim.cmd("colorscheme gruvbox")
vim.cmd("syntax on")
vim.o.mouse = "a"
vim.o.visualbell = true
vim.o.errorbells = false
vim.o.showcmd = true

vim.o.showmode = false
vim.o.swapfile = false
vim.o.backup = false
vim.o.ttyfast = true
vim.o.autowrite = true
vim.o.autoread = true
vim.o.updatetime = 300
vim.o.cmdheight = 1
vim.o.shortmess = vim.o.shortmess .. "c"

vim.o.splitright = true
vim.o.splitbelow = true
vim.o.backspace = "indent,eol,start"
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.wrap = false
vim.wo.cursorline = true
vim.wo.cursorcolumn = true
vim.signcolumn = "yes"
vim.o.hidden = true
vim.o.showtabline = 2

vim.o.incsearch = true
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.smartcase = true

vim.bo.expandtab = true
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.cmd("set ts=4")
vim.cmd("set sw=4")
vim.o.shiftround = true


vim.o.scrolloff = 5
vim.cmd("set inccommand=split") -- make substitution work in realtime
vim.cmd([[set list listchars=tab:\ \ ,trail:·,nbsp:·]])
vim.cmd([[set wildignore+=*/.git/*,*/.hg/*,*/.svn/*.,*/.DS_Store,*/node_modules/*]])

-- set working directory to current buffer's directory
vim.cmd([[autocmd BufEnter * silent! lcd %:p:h]])

-- remove whitespace on save
vim.cmd([[autocmd BufWritePre * :%s/\s\+$//e]])

-- color columns
vim.cmd([[autocmd BufNewFile,BufReadPost *.js,*.ts,*.tsx setl colorcolumn=80,120]])

--vim.cmd([[autocmd InserEnter * norm zz]]) --automatically center the screen upon enterring insert mode

