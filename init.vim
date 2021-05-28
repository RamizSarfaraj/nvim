let mapleader = " "

if has("nvim")
    call plug#begin('~/.config/nvim/autoload/plugged') " for neovim
else
    call plug#begin('~/.vim/autoload/plugged') " for vim
endif


""" better commenting
Plug 'preservim/nerdcommenter'


"" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'


""" intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"" telescope [fuzzy file finder or alternate fzf with better colors]
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"" vim colorscheme
Plug 'gruvbox-community/gruvbox'
Plug 'dracula/vim'
Plug 'murilo-menezes/palenight.lua'
"Rainbow Brackets
Plug 'luochen1990/rainbow'


""" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

call plug#end()


" plugins
"luafile $HOME/.config/nvim/lua/plugins.lua


" sourcing the files
source $HOME/.config/nvim/vimscript/plugins.vim
source $HOME/.config/nvim/vimscript/coc.vim


" luafiles
luafile $HOME/.config/nvim/lua/general/settings.lua
luafile $HOME/.config/nvim/lua/general/keymappings.lua
luafile $HOME/.config/nvim/lua/plug-sets/telescope-nvim.lua
"

