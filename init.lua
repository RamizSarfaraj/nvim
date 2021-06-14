vim.g.mapleader = " "

require[[plugin_list]]

-- general settings like variables and keymappings.
require[[general]]

-- plugins settings
require[[commenter]]
require[[markdown]]
require[[telescope-nvim]]
require[[nvimTree]]
require[[statusline]]
require[[tree-sitter]]
require[[floaTerm]]
require[[nvim-autopairs]].setup()
require[[colorizer]].setup()


vim.cmd[[ source $HOME/.config/nvim/plugin/coc.vim ]]
