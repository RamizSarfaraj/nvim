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
  use {'kyazdani42/nvim-web-devicons'}

  -- Native LSP
  use {'neovim/nvim-lspconfig'}
  use {'kabouzeid/nvim-lspinstall'}
  -- use 'mattn/efm-langserver'
  use {'folke/lsp-colors.nvim'}
  -- use "windwp/nvim-ts-autotag"
  -- use 'hrsh7th/nvim-compe'

  --auto open and close pairs
  use {'windwp/nvim-autopairs'}
  --better commenting
  use {'terrortylor/nvim-comment'}
  --status lien
  use {'glepnir/galaxyline.nvim'}


  --intellisense
  use {'neoclide/coc.nvim', branch = 'release'}
  --lua development
  use {'rafcamlet/coc-nvim-lua'}
  --snippets
  use {'honza/vim-snippets'}


  --telescope [fuzzy file finder or alternate fzf with better colors] some more functionality.
  use {'nvim-lua/popup.nvim'}
  use {'nvim-lua/plenary.nvim'}
  use {'nvim-telescope/telescope.nvim'}


  --vim colorscheme ( more than one and that's how I like it.)
  --use 'gruvbox-community/gruvbox'
  -- use {'ChristianChiarulli/nvcode-color-schemes.vim'}
  use {'lvim-tech/lvim-colorscheme'}
  use {'ful1e5/onedark.nvim'}

  --colorizer
  use {'norcalli/nvim-colorizer.lua'}

  --Treesitter
  use {'nvim-treesitter/nvim-treesitter', run=':TSUpdate'}


  --markdown
  use {'godlygeek/tabular'}
  use {'plasticboy/vim-markdown'}

  --floaterm
  use {'voldikss/vim-floaterm'}


  --startify, keeps track of your recent opened
  use {'mhinz/vim-startify'}

  end)
