--https://github.com/nvim-treesitter/nvim-treesitter-textobjects
local function init(paq)
  paq{'nvim-treesitter/nvim-treesitter'}
  local text_object = require('plugins.text-object')
  text_object.init(paq)
  local treesitter = require('nvim-treesitter.configs')
  treesitter.setup {
	highlight = {
	  enable = true
	}
  }
end

return {
  init = init
}


	--text-object = {
	  --select = text_object.select,
	  --swap = text_object.swap,
	  --move = text_object.move
	--},
