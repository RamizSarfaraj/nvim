local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
    execute "packadd packer.nvim"
end

--- Check if a file or directory exists in this path
local function require_plugin(plugin)
    local plugin_prefix = fn.stdpath("data") .. "/site/pack/packer/opt/"

    local plugin_path = plugin_prefix .. plugin .. "/"
    --	print('test '..plugin_path)
    local ok, err, code = os.rename(plugin_path, plugin_path)
    if not ok then
        if code == 13 then
            -- Permission denied, but it exists
            return true
        end
    end
    --	print(ok, err, code)
    if ok then
        vim.cmd("packadd " .. plugin)
    end
    return ok, err, code
end


return require("packer").startup(
    function(use)
        -- Packer can manage itself as an optional plugin
        use "wbthomason/packer.nvim"



		-- NERDTree and NERDCommenter
		--use 'scrooloose/NERDTree'
		-- icons
		--use 'ryanoasis/vim-devicons'
		--requires
		use 'kyazdani42/nvim-web-devicons' -- for file icons
		use 'kyazdani42/nvim-tree.lua'



		-- better commenting
		use 'preservim/nerdcommenter'


		--Auto pairs for '(' '[' '{'
		use 'jiangmiao/auto-pairs'


		-- intellisense
		use 'neoclide/coc.nvim', {'branch': 'release'}

		-- telescope [fuzzy file finder or alternate fzf with better colors]
		--use 'nvim-lua/popup.nvim'
		--use 'nvim-lua/plenary.nvim'
		--use 'nvim-telescope/telescope.nvim'

		use 'vim-airline/vim-airline'
		use 'vim-airline/vim-airline-themes'

		-- vim colorscheme
		use 'morhetz/gruvbox'
		use 'dracula/vim'
		-- Rainbow Brackets
		use 'luochen1990/rainbow'


		-- markdown
		use 'godlygeek/tabular'
		use 'plasticboy/vim-markdown'


end
)

