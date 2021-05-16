local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
    execute "packed packer.nvim"
end

vim.cmd([[autocmd BufWritePost plugins.lua PackerCompile]])

return require("packer").startup(function(use)
    -- packer can manager itself
    use "wbthomason/packer.nvim"

    use {"junegunn/fzf.vim", requires = {"junegunn/fzf"}, run = function() vim.fn["fzf#install"]() end}
    use {"lewis6991/gitsigns.nvim", requires = {"nvim-lua/plenary.nvim"}}


end)
