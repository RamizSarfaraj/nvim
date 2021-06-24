
require'nvim-treesitter.configs'.setup {
    ensure_installed = { 'bash', 'cpp', 'lua', 'python', 'javascript', 'html', 'css' },
    ignore_install = {},
    indent = {
      enable = true,
    },
    highlight = {
        enable = true,
        disable = { },
    }
}
