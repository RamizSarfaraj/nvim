vim.g.mapleader = " "

require[[plugin_list]]

-- general settings like variables and keymappings.
require[[general]]

-- plugins settings
require[[plugin_setup]]
-- require[[nvim-autopairs]].setup()
-- require[[colorizer]].setup()


vim.cmd[[ source $HOME/.config/nvim/plugin/coc.vim ]]
