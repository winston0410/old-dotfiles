local function init(paq)
	--paq{'akinsho/nvim-toggleterm.lua'}
	--require("toggleterm").setup{
		--size = 20
		--direction = 'horizontal'
		--}

		paq{'caenrique/nvim-toggle-terminal'}

		vim.cmd [[ nnoremap <silent> <C-t> :ToggleTabTerminal<CR> ]]
		vim.cmd [[ tnoremap <silent> <C-t> <C-\><C-n>:ToggleTabTerminal<CR> ]]

	end

	return {
		init = init
	}

