
require("catppuccin").setup({
	flavour = "frappe",
	transparent_background = true,
        styles = {
           sidebars = "transparent",
           floats = "transparent",
        },
})

local pywal15 = require('pywal16')
pywal15.setup()

local colorscheme = "catppuccin"
vim.cmd('silent! colorscheme catppuccin')
