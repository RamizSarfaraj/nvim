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
Plug 'nvim-telescope/telescope.nvim"

" colorizer
Plug 'norcalli/nvim-colorizer.lua'


" vim colorscheme
Plug 'gruvbox-community/gruvbox'
Plug 'dracula/vim'
Plug 'shaunsingh/moonlight.nvim'

" markdown
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
"luafile $HOME/.config/nvim/lua/plug-sets/telescope-nvim.lua


lua << EOF
-- plugins w/o any configurations
require[[nvim-autopairs]].setup()
require[[colorizer]].setup()

-- plugins with configurations
require[[nvim-tree]]
require[[statusline]]
require[[telescope]]
EOF

