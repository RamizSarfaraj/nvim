let mapleader = " "

if has("nvim")
    call plug#begin("~/.config/nvim/autoload/plugged") " for neovim
else
    call plug#begin("~/.vim/autoload/plugged") " for vim
endif

    " file tree & icons for file tree
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'kyazdani42/nvim-web-devicons'

    "auto open and close pairs
    Plug 'windwp/nvim-autopairs'

    " better commenting
    Plug 'terrortylor/nvim-comment'

    " status lien
    Plug 'glepnir/galaxyline.nvim'

    " intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " snippets
    Plug 'honza/vim-snippets'

    " telescope [fuzzy file finder or alternate fzf with better colors] some more functionality.
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " colorizer
    Plug 'norcalli/nvim-colorizer.lua'

    " vim colorscheme ( more than one and that's how I like it.)
    Plug 'gruvbox-community/gruvbox'
    Plug 'marko-cerovac/material.nvim'
    Plug 'folke/tokyonight.nvim'
    Plug 'embark-theme/vim', { 'as': 'embark' }

    " markdown
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'

call plug#end()



" settings and keymappings first to load
luafile $HOME/.config/nvim/lua/general/settings.lua
luafile $HOME/.config/nvim/lua/general/colorcheme.lua
luafile $HOME/.config/nvim/lua/general/keymappings.lua


" lua plugins for autopair and color highlights (these work without any setup)
lua << EOF
require[[nvim-autopairs]].setup()
require[[colorizer]].setup()
EOF

" other major lua plugin setups
luafile $HOME/.config/nvim/lua/commenter/init.lua
luafile $HOME/.config/nvim/lua/markdown/init.lua
luafile $HOME/.config/nvim/lua/telescope-nvim/init.lua
luafile $HOME/.config/nvim/lua/nvimTree/init.lua
luafile $HOME/.config/nvim/lua/statusline/init.lua


" coc.nvim and other settings.
source $HOME/.config/nvim/after/plugin/coc.vim
