local function init(paq)
	paq({ "phaazon/hop.nvim" })
	require("hop").setup({})
	vim.cmd([[ nmap <Leader><Leader> <cmd>HopChar1<cr>]])
	vim.cmd([[ vmap <Leader><Leader> <cmd>HopChar1<cr>]])
	vim.cmd([[ nmap <Leader>w <cmd>HopWord<cr>]])
    vim.cmd([[ vmap <Leader>w <cmd>HopWord<cr>]])
end

return {
	init = init,
}
