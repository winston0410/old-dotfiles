local function init(paq)
  paq{'akinsho/nvim-toggleterm.lua'}
  require("toggleterm").setup{
	size = 30,
	direction = 'horizontal',
	hide_numbers = true
  }

end

return {
  init = init
}

--paq{'caenrique/nvim-toggle-terminal'}

--vim.cmd [[ nnoremap <silent> <C-t> :ToggleTabTerminal<CR> ]]
--vim.cmd [[ tnoremap <silent> <C-t> <C-\><C-n>:ToggleTabTerminal<CR> ]]
