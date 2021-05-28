let mapleader = " "

if has("nvim")
    call plug#begin("~/.config/nvim/autoload/plugged") " for neovim
else
    call plug#begin("~/.vim/autoload/plugged") " for vim
endif

" file manager
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'

"auto open and close pairs
Plug 'windwp/nvim-autopairs'

" better commenting
Plug 'preservim/nerdcommenter'

" status lien
Plug 'glepnir/galaxyline.nvim'

" intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" telescope [fuzzy file finder or alternate fzf with better colors] some more functionality.
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" colorizer
Plug 'norcalli/nvim-colorizer.lua'


" vim colorscheme
Plug 'gruvbox-community/gruvbox'
Plug 'dracula/vim'

" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

call plug#end()




" luafiles
luafile $HOME/.config/nvim/lua/general/settings.lua
luafile $HOME/.config/nvim/lua/general/keymappings.lua

lua << EOF
require[[nvim-autopairs]].setup()
require[[colorizer]].setup()

--
--require[[general]]
--require[[telescope]]
--require[[nvim-tree]]
--require[[statusline]]
EOF

luafile $HOME/.config/nvim/lua/telescope-nvim/init.lua
luafile $HOME/.config/nvim/lua/nvimTree/init.lua
luafile $HOME/.config/nvim/lua/statusline/init.lua




source $HOME/.config/nvim/after/plugin/plugins.vim
source $HOME/.config/nvim/after/plugin/coc.vim
