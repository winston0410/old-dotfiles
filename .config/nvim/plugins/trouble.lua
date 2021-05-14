local function init(paq)
	paq {'folke/trouble.nvim'}
	require'trouble'.setup {
		position = "left",
		width = 30,
		use_lsp_diagnostic_signs = true,
		indent_lines = false,
		auto_open = true,
		auto_close = true
	}
	vim.api.nvim_set_keymap("n", "<C-l>",
	"<cmd>Trouble lsp_document_diagnostics<cr>",
	{silent = true, noremap = true})
end

return {init = init}

