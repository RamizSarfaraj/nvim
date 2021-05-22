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
        use "scrooloose/NERDTree"
        --icons
        use "ryanoasis/vim-devicons"
        --better commenting
        use "preservim/nerdcommenter"


        --Auto pairs for '(' '[' '{'
        use "jiangmiao/auto-pairs"

        --intellisense
        -- use 'neoclide/coc.nvim', {'branch': 'release'}
        --jedi
        --"use 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }

        use 'nvim-lua/popup.nvim'
        use 'nvim-lua/plenary.nvim'
        use 'nvim-telescope/telescope.nvim'

        use 'vim-airline/vim-airline'
        use 'vim-airline/vim-airline-themes'
        -- vim colorscheme
        use 'rafi/awesome-vim-colorschemes'

        -- Rainbow Brackets
        use 'luochen1990/rainbow'
        -- for lsp
        --use 'neovim/nvim-lspconfig'
        --use 'nvim-lua/completion-nvim'
        --use 'nvim-lua/diagnostic-nvim'


-- markdown
        use 'godlygeek/tabular'
        use 'plasticboy/vim-markdown'


        require_plugin("NERDTree")
        require_plugin("vim-devicons")
        require_plugin("nerdcommenter")
        require_plugin("auto-pairs")
        require_plugin("popup.nvim")
        require_plugin("plenary.nvim")
        require_plugin("telescope.nvim")
        require_plugin("vim-airline")
        require_plugin("vim-airline-themes")
        require_plugin("awesome-vim-colorschemes")
        require_plugin("rainbow")
        require_plugin("tabular")
        require_plugin("vim-markdown")


end
)

