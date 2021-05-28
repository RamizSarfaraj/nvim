-- getmetatable("").__index = function(str, i) return string.sub(str, i, i) end
--vim.o.termiguicolors = true


vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")
vim.o.termguicolors = true -- set term gui colors most terminals support this
vim.o.background = 'dark'

--require[[palenight]]
vim.cmd("colorscheme gruvbox")
----vim.cmd("colorscheme dracula")
vim.g.gruvbox_bold = 0
vim.g.gruvbox_italic = 1
vim.g.gruvbox_contrast_dark = 'hard'
vim.g.gruvbox_transparent_bg = 1
vim.g.gruvbox_hls_cursor = 'orange'
vim.g.gruvbox_color_column = "green"
vim.g.gruvbox_italicize_strings = 1


--vim.cmd("set encoding='UTF-8'")
vim.o.title = false
vim.o.mouse = "a"
vim.o.visualbell = true
vim.o.errorbells = false
vim.o.showcmd = false

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
vim.wo.cursorcolumn = true
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
vim.wo.numberwidth = 2
vim.wo.cursorline = true

vim.bo.expandtab = true
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.smartindent = true
vim.cmd("set ts=4")
vim.cmd("set sw=4")

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
