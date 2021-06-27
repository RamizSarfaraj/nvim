local U = require("utils")
local map = U.keymap

require("neogit").setup {
  disable_commit_confirmation = true,
  integration = {
    diffview = true
  }
}

map('n', '<leader>gg', [[<cmd> Neogit <CR>]], {noremap = true})
map('n', '<leader>gd', [[<cmd> DiffviewOpen<CR>]], {noremap = true})
map('n', '<leader>gD', [[<cmd> DiffviewOpen master<CR>]], {noremap = true})
map('n', '<leader>gl', [[<cmd> Neogit log<CR>]], {noremap = true})
map('n', '<leader>gp', [[<cmd> Neogit push<CR>]], {noremap = true})
