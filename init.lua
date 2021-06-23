vim.g.mapleader = " "

-- list of plugins
require[[plugin_list]]

-- general settings like variables and keymappings.
require[[general]]

-- plugins settings
--
require[[plugin_setup]]

vim.cmd[[ hi Normal guibg=NONE ctermbg=NONE ]] -- make colorscheme transparent
