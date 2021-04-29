package.path = package.path .. ";" .. vim.fn.getenv("HOME") .. "/.config/nvim/?.lua"

vim.cmd [[ source $HOME/.config/nvim/keymap.vim ]]
vim.cmd [[ source $HOME/.config/nvim/command-alias.vim ]]
vim.cmd [[ source $HOME/.config/nvim/values.vim ]]

vim.cmd 'packadd paq-nvim'         -- Load package
local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function
paq{'savq/paq-nvim', opt=true}     -- Let Paq manage itself

paq{'wbthomason/packer.nvim'}
require('plugins.lsp-server').init(paq)
require('plugins.lspsaga').init(paq)
require('plugins.completion').init(paq)
paq{'nvim-treesitter/nvim-treesitter'}
paq{'sainnhe/edge'}
paq{'kyazdani42/nvim-web-devicons'}
require('plugins.nerd-commenter').init(paq)
require('plugins.easy-motion').init(paq)
require('plugins.nvim-tree').init(paq)
require('plugins.gitsigns').init(paq)
--require('plugins.toggleterm').init(paq)
require('plugins.indent-blankline').init(paq)
require('plugins.telescope-nvim').init(paq)
require('plugins.galaxyline').init(paq)
require('plugins.autopairs').init(paq)

local treesitter = require('nvim-treesitter.configs')
treesitter.setup {
	highlight = {
		enable = true
	}
}

vim.cmd [[
if !exists('g:syntax_on')
	syntax enable
	endif
	colorscheme edge
	]]
