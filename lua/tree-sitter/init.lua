
require'nvim-treesitter.configs'.setup {
    ensure_installed = { 'bash', 'cpp', 'lua', 'python' },
    ignore_install = {},
    highlight = {
        enable = true,
        disable = { },
    }
}
