require('bufferline').setup {
  options = {
    numbers = "buffer_id",
    number_style = "superscript",
    mappings = false,

    indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
    tab_size = 18,

    offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = --[["left" | "center" |]] "right"}},
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_close_icon = true,
    show_tab_indicators = true,
    persist_buffer_sort = true,
    separator_style = "thin",
    always_show_bufferline = true,
  }
}

local utils = require[[utils]]
local map = utils.keymap


-- MAPPINGS
map("n", "<leader>n", [[<Cmd>tabnew<CR>]]) -- new tab
map("n", "<leader>x", [[<Cmd>bdelete<CR>]]) -- close tab

-- move between tabs
map("n", "<TAB>", [[<Cmd>BufferLineCycleNext<CR>]])
map("n", "<S-TAB>", [[<Cmd>BufferLineCyclePrev<CR>]])

map("n", "bd", "<cmd> BufferLineSortByDirectory<CR>")
map("n", "be", "<cmd> BufferLineSortByExtension<CR>")
