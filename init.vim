if has("nvim")
    call plug#begin('~/.config/nvim/autoload/plugged') " for neovim
else
    call plug#begin('~/.vim/autoload/plugged') " for vim
endif

" NERDTree and NERDCommenter
Plug 'scrooloose/NERDTree'
" better commenting
Plug 'preservim/nerdcommenter'

" lf file manager in vim
"Plug 'ptzz/lf.vim'
" dependency
Plug 'voldikss/vim-floaterm'
"Plug 'mcchrish/nnn.vim'

" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'

" FZF file search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" vim colorscheme
Plug 'rafi/awesome-vim-colorschemes'
"Plug 'lifepillar/vim-gruvbox8'

" Rainbow Brackets
Plug 'luochen1990/rainbow'
" jedi
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }


"for lsp
"Plug 'neovim/nvim-lspconfig'
"Plug 'nvim-lua/completion-nvim'
"Plug 'nvim-lua/diagnostic-nvim'


" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" icons
Plug 'ryanoasis/vim-devicons'

call plug#end()




" sourcing the files
source $HOME/.config/nvim/setup/plugins.vim
"source $HOME/.config/nvim/setup/settings.vim
luafile $HOME/.config/nvim/lua/settings.lua
luafile $HOME/.config/nvim/lua/keymappings.lua
"source $HOME/.config/nvim/setup/keymap.vim
source $HOME/.config/nvim/setup/coc.vim
