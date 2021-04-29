local function init(paq)
  paq{'lukas-reineke/indent-blankline.nvim', branch='lua'}

vim.g.indent_blankline_use_treesitter = true
vim.g.indent_blankline_char = '│'

end

return {
  init = init
}


