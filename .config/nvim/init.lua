package.path = package.path .. ";" .. vim.fn.getenv("HOME") .. "/.config/nvim/?.lua"

vim.cmd [[ source $HOME/.config/nvim/keymap.vim ]]
vim.cmd [[ source $HOME/.config/nvim/command-alias.vim ]]
vim.cmd [[ source $HOME/.config/nvim/values.vim ]]
vim.cmd [[ source $HOME/.config/nvim/yaml.vim ]]

vim.cmd 'packadd paq-nvim'         -- Load package
local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function
paq{'savq/paq-nvim', opt=true}     -- Let Paq manage itself

paq{'wbthomason/packer.nvim'}
require('plugins.lspconfig').init(paq)
require('plugins.smart_number').setup()
-- require('plugins.extmarks').setup()
require('plugins.yank_highlight').setup()
paq{'kyazdani42/nvim-web-devicons'}
require('plugins.completion').init(paq)
require('plugins.trouble').init(paq)
require('plugins.treesitter').init(paq)
require('plugins.edge').init(paq)
--require('plugins.nerd-commenter').init(paq)
require('plugins.hop').init(paq)
require('plugins.gitsigns').init(paq)
require('plugins.indent-blankline').init(paq)
require('plugins.telescope').init(paq)
require('plugins.galaxyline').init(paq)
require('plugins.formatter').init(paq)
require('plugins.colorizer').init(paq)
-- require('plugins.numb').init(paq)
require('plugins.range-highlight').init(paq)
require('plugins.better-O').init(paq)
require('plugins.motion').init(paq)
require('plugins.reverse-J').init(paq)
require('plugins.commented').init(paq)
require('plugins.nvim_context_vt').init(paq)
-- require('plugins.symbols_outline').init(paq)
-- require('plugins.motion-hints').init(paq)
require('custom-filetypes')

vim.cmd [[ source $HOME/.config/nvim/highlight.vim ]]
