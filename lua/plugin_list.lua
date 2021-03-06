local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
  execute "packadd packer.nvim"
end

vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua

return require("packer").startup(
  function(use)
  -- Packer can manage itself
  use {'wbthomason/packer.nvim'}

  --file tree & icons for file tree
  use {'kyazdani42/nvim-tree.lua'}
  use {'akinsho/nvim-bufferline.lua'}
  use {'kyazdani42/nvim-web-devicons'}

  use {'lewis6991/gitsigns.nvim'}
  use {'kdheepak/lazygit.nvim'}

  -- Native LSP
  use {'neovim/nvim-lspconfig'}
  use {'kabouzeid/nvim-lspinstall'}
  use {"onsails/lspkind-nvim"}
  use {'hrsh7th/nvim-compe'}
  -- snippet support
  use "hrsh7th/vim-vsnip"
  use "rafamadriz/friendly-snippets"
  use {'L3MON4D3/LuaSnip'}
  --auto open and close pairs
  use {'windwp/nvim-autopairs'}
  --better commenting
  use {'terrortylor/nvim-comment'}
  --status lien
  use {'glepnir/galaxyline.nvim'}
  use {'easymotion/vim-easymotion'}

  --telescope [fuzzy file finder or alternate fzf with better colors] some more functionality.
  use {'nvim-lua/popup.nvim'}
  use {'nvim-lua/plenary.nvim'}
  use {'nvim-telescope/telescope.nvim'}

    --
  --vim colorscheme.
  use {'christianchiarulli/nvcode-color-schemes.vim'}
  --colorizer
  use {'norcalli/nvim-colorizer.lua'}

  --Treesitter
  use {'nvim-treesitter/nvim-treesitter', run=':TSUpdate'}

  -- startify
  use {'mhinz/vim-startify'}
  -- indent backline
  use {"lukas-reineke/indent-blankline.nvim"}

  -- zenmode and which key.
  use "kdav5758/TrueZen.nvim"
  use "folke/which-key.nvim"


  end)
