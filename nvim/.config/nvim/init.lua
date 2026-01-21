-- auto install vim-plug and plugins, if not found
local data_dir = vim.fn.stdpath('data')
if vim.fn.empty(vim.fn.glob(data_dir .. '/site/autoload/plug.vim')) == 1 then
	vim.cmd('silent !curl -fLo ' .. data_dir .. '/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
	vim.o.runtimepath = vim.o.runtimepath
	vim.cmd('autocmd VimEnter * PlugInstall --sync | source $MYVIMRC')
end

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug('catppuccin/nvim', { ['as'] = 'catppuccin' }) --colorscheme
Plug('uZer/pywal16.nvim', { [ 'as' ] = 'pywal16' }) --or, pywal colorscheme
Plug('nvim-lualine/lualine.nvim') --statusline
Plug('nvim-treesitter/nvim-treesitter') --improved syntax
Plug('nvim-tree/nvim-web-devicons') 
Plug('nvim-tree/nvim-tree.lua')
Plug('windwp/nvim-autopairs') --autopairs
Plug('romgrk/barbar.nvim') --bufferline
vim.call('plug#end')

require("config.mappings")

require("plugins.lualine")
require("plugins.nvim-tree")
require("plugins.colorscheme")

vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"

