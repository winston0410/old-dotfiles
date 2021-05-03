local function init(paq)
		paq{'terrortylor/nvim-comment'}
		require('nvim_comment').setup({ create_mappings = false })
		-- vim.cmd([[ nnoremap <expr> <leader>/ (v:count ? "<CMD>CommentToggle<CR>" : ':set operatorfunc=CommentOperator<CR>g@') ]])
		vim.cmd([[ nnoremap <expr> <leader>/ "<CMD>CommentToggle<CR>" ]])
		vim.cmd([[ command! -range Cm <line1>,<line2>CommentToggle ]])
end

return {
	init = init
}


-- vim.cmd([[ nnoremap <expr> <leader>/ v:count . "<CMD>CommentToggle<CR>" ]])
