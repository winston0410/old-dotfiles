local function init(paq)
		paq{'easymotion/vim-easymotion'}
		vim.cmd [[ map <Leader> <Plug>(easymotion-prefix) ]]
		vim.cmd [[ nmap <Leader><Leader> <Plug>(easymotion-overwin-w) ]]
		vim.g.EasyMotion_do_mapping = 0
end

return {
	init = init
}

