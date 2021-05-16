local utils = require("utils")
local map = utils.keymap

utils.keymap('n', '<C-t>', ':ProjectRootExe Files<CR>')
utils.keymap('n', '<C-p>', ':GFiles<CR>')
utils.keymap('n', '<C-f>f', ':<C-u>ProjectRootExe Ag <CR>')
utils.keymap('n', '<leader>b', ':<C-u>Buffers<CR>')
