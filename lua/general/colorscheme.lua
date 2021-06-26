local cmd = vim.cmd
vim.o.termguicolors = true -- set term gui colors most terminals support this
vim.o.background = 'dark'



--[[
-- vim.g.tokyonight_style = "storm"
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_comments = true
vim.g.tokyonight_italic_keywords = true
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_italic_variables = true
vim.g.tokyonight_dark_sidebar = true
vim.g.tokyonight_dark_float = true

cmd[[ colo tokyonight ]]
--]]


--[[
require("onedark").setup({
  commentStyle = "italic",
  keywordStyle = "italic",
  functionStyle = "italic",
  variableStyle = "italic",
  transparent = true,
  -- sidebars = {"packer"},
  darkSidebar = true,
  darkFloat = true,
  colors = {hint = "orange", error = "#ff0000"}
})
--]]



cmd[[ colo dracula ]]
