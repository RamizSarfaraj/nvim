vim.g.mapleader = " "

-- list of plugins
require[[plugin_list]]

-- general settings like variables and keymappings.
require[[general]]

-- plugins settings
require[[plugin_setup]]


-- CoC setup (soon to by replaced by native lsp)
vim.cmd[[ source $HOME/.config/nvim/plugin/coc.vim ]]
