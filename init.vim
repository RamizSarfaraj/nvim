if has("nvim")
    call plug#begin('~/.config/nvim/autoload/plugged') " for neovim
else
    call plug#begin('~/.vim/autoload/plugged') " for vim
endif

"" NERDTree and NERDCommenter
Plug 'scrooloose/NERDTree'
"" icons
Plug 'ryanoasis/vim-devicons'
"" better commenting
Plug 'preservim/nerdcommenter'


"" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'


"" intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"" jedi
""Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }

""
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
""" vim colorscheme
Plug 'rafi/awesome-vim-colorschemes'

"" Rainbow Brackets
Plug 'luochen1990/rainbow'

""for lsp
""Plug 'neovim/nvim-lspconfig'
""Plug 'nvim-lua/completion-nvim'
""Plug 'nvim-lua/diagnostic-nvim'


"" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'


call plug#end()

" plugins
"luafile $HOME/.config/nvim/lua/plugins.lua


" sourcing the files
source $HOME/.config/nvim/setup/plugins.vim
"source $HOME/.config/nvim/setup/coc.vim

luafile $HOME/.config/nvim/lua/settings.lua
luafile $HOME/.config/nvim/lua/keymappings.lua
luafile $HOME/.config/nvim/lua/telescope-nvim.lua
