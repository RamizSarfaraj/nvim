set nocompatible
syntax enable
set nu rnu
set hidden
set encoding=UTF-8 fileencoding=UTF-8
set pumheight=10 cmdheight=1
set mouse=a
set splitbelow splitright
set conceallevel=0
set tabstop=4 shiftwidth=4 showtabline=4 smarttab expandtab
set autoindent smartindent
set laststatus=2
set noshowmode noswapfile nobackup
set updatetime=300 timeoutlen=300
set clipboard=unnamedplus
set ic nohls
set cursorline
"set guifont=Nerd\
autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set t_Co=256
colorscheme one
set background=dark
if (has("termguicolors"))
	set termguicolors
endif


