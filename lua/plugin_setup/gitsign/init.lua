require('gitsigns').setup {
  signs = {
    add = {hl = "DiffAdd", text = "+", numhl = "GitSignsAddNr"},
    -- add = {hl = "DiffAdd", text = "|", numhl = "GitSignsAddNr"},
    -- change = {hl = "DiffChange", text = "▌", numhl = "GitSignsChangeNr"},
    change = {hl = "DiffChange", text = "x", numhl = "GitSignsChangeNr"},
    delete = {hl = "DiffDelete", text = "_", numhl = "GitSignsDeleteNr"},
    topdelete = {hl = "DiffDelete", text = "‾", numhl = "GitSignsDeleteNr"},
    changedelete = {hl = "DiffChange", text = "~", numhl = "GitSignsChangeNr"}
  },
  numhl = true,
  keymaps = {
    -- Default keymap options
    noremap = true,
    buffer = true,
    ["n ]c"] = {expr = true, '&diff ? \']c\' : \'<cmd>lua require"gitsigns".next_hunk()<CR>\''},
    ["n [c"] = {expr = true, '&diff ? \'[c\' : \'<cmd>lua require"gitsigns".prev_hunk()<CR>\''},
    ["n <leader>hs"] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
    ["n <leader>hu"] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
    ["n <leader>hr"] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
    ["n <leader>hp"] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
    ["n <leader>hb"] = '<cmd>lua require"gitsigns".blame_line()<CR>'
  },
  watch_index = {
      interval = 100
  },
  sign_priority = 5,
  status_formatter = nil, -- Use default
  current_line_blame = false,
  current_line_blame_delay = 1000,
  use_decoration_api = true,
  use_internal_diff = true,

}
