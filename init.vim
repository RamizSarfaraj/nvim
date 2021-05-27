let mapleader = " "

if has("nvim")
    call plug#begin('~/.config/nvim/autoload/plugged') " for neovim
else
    call plug#begin('~/.vim/autoload/plugged') " for vim
endif

" NERDTree and NERDCommenter
"Plug 'scrooloose/NERDTree'
" icons
"Plug 'ryanoasis/vim-devicons'
"requires
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'



""" better commenting
Plug 'preservim/nerdcommenter'


"" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'


""" intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"" telescope [fuzzy file finder or alternate fzf with better colors]
"Plug 'nvim-lua/popup.nvim'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"" vim colorscheme
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
"" Rainbow Brackets
Plug 'luochen1990/rainbow'


""" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

call plug#end()


" plugins
"luafile $HOME/.config/nvim/lua/plugins.lua


" sourcing the files
source $HOME/.config/nvim/setup/plugins.vim
source $HOME/.config/nvim/setup/coc.vim

luafile $HOME/.config/nvim/lua/settings.lua
luafile $HOME/.config/nvim/lua/keymappings.lua
luafile $HOME/.config/nvim/lua/telescope-nvim.lua
"luafile $HOME/.config/nvim/lua/lspconfig.lua
"luafile $HOME/.config/nvim/lua/completion.lua
"

