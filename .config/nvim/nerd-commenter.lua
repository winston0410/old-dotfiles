local function init(paq)
		paq{'preservim/nerdcommenter'}
		vim.cmd [[ nmap <leader>/ <plug>NERDCommenterToggle<CR> ]]
		vim.g.NERDCreateDefaultMappings = 0
end

return {
	init = init
}
