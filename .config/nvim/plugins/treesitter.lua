-- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
-- TSInstall dart yaml vue tsx typescript toml teal svelte rust lua json javascript html go bash nix
local function init(paq)
    paq {'nvim-treesitter/nvim-treesitter'}
	paq {'nvim-treesitter/playground'}
    local text_object = require('plugins.text-object')
    text_object.init(paq)
    local treesitter = require('nvim-treesitter.configs')
    treesitter.setup {highlight = {enable = true}}
end

return {init = init}

-- text-object = {
-- select = text_object.select,
-- swap = text_object.swap,
-- move = text_object.move
-- },
