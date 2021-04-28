package.path = package.path .. ";" .. vim.fn.getenv("HOME") .. "/.config/nvim/?.lua"

vim.cmd [[ source $HOME/.config/nvim/keymap.vim ]]
vim.cmd [[ source $HOME/.config/nvim/command-alias.vim ]]
vim.cmd [[ source $HOME/.config/nvim/values.vim ]]

vim.cmd 'packadd paq-nvim'         -- Load package
local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function
paq{'savq/paq-nvim', opt=true}     -- Let Paq manage itself

paq{'wbthomason/packer.nvim'}
require('lsp-server').init(paq)
paq{'glepnir/lspsaga.nvim'}
paq{'nvim-lua/completion-nvim'}
paq{'nvim-treesitter/nvim-treesitter'}
paq{'sainnhe/edge'}
paq{'itchyny/lightline.vim'}
--paq{'glepnir/galaxyline.nvim', branch='main'}
--paq{'ryanoasis/vim-devicons'}
paq{'kyazdani42/nvim-web-devicons'}
require('nerd-commenter').init(paq)
require('easy-motion').init(paq)
--require('nerd-tree').init(paq)
--require('nvim-tree').init(paq)
--require('gitgutter').init(paq)
require('toggleterm').init(paq)
require('indent-blankline').init(paq)
vim.g.indent_blankline_use_treesitter = true
require('telescope-nvim').init(paq)
--vim.cmd [[ source $HOME/.config/nvim/nerd-tree.vim ]]
--vim.cmd [[ source $HOME/.config/nvim/gitgutter.vim ]]

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
