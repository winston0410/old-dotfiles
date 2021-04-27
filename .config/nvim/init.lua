vim.cmd [[ source $HOME/.config/nvim/keymap.vim ]]
vim.cmd [[ source $HOME/.config/nvim/command-alias.vim ]]
vim.cmd [[ source $HOME/.config/nvim/terminal.vim ]]
vim.cmd [[ source $HOME/.config/nvim/values.vim ]]

vim.cmd 'packadd paq-nvim'         -- Load package
local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function
paq{'savq/paq-nvim', opt=true}     -- Let Paq manage itself

paq{'wbthomason/packer.nvim'}
paq{'neovim/nvim-lspconfig'}
--paq{'glepnir/lspsaga.nvim'}
paq{'nvim-lua/completion-nvim'}
paq{'nvim-treesitter/nvim-treesitter'}
paq{'sainnhe/edge'}
paq{'itchyny/lightline.vim'}
paq{'ryanoasis/vim-devicons'}
require('nerd-commenter').init(paq)
require('easy-motion').init(paq)
require('nerd-tree').init(paq)
require('gitgutter').init(paq)
vim.cmd [[ source $HOME/.config/nvim/nerd-tree.vim ]]
vim.cmd [[ source $HOME/.config/nvim/gitgutter.vim ]]


local treesitter = require('nvim-treesitter.configs')
treesitter.setup {
  highlight = {
    enable = true
  }
}

local lspconfig = require('lspconfig')

lspconfig.tsserver.setup{}
lspconfig.dockerls.setup{}
lspconfig.purescriptls.setup{}
lspconfig.yamlls.setup{}

vim.cmd [[
if !exists('g:syntax_on')
	syntax enable
endif
colorscheme edge
]]
