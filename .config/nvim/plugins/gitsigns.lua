local function init(paq)
	paq({ "nvim-lua/plenary.nvim" })
	paq({ "lewis6991/gitsigns.nvim" })

	require("gitsigns").setup({
		--         watch_index = {
		-- 	interval = 10000
		-- },
		signs = {
			add = {
				hl = "GitSignsAdd",
				text = "│",
				numhl = "GitSignsAddNr",
				linehl = "GitSignsAddLn",
			},
			change = {
				hl = "GitSignsChange",
				text = "│",
				numhl = "GitSignsChangeNr",
				linehl = "GitSignsChangeLn",
			},
			delete = {
				hl = "GitSignsDelete",
				text = "│",
				numhl = "GitSignsDeleteNr",
				linehl = "GitSignsDeleteLn",
			},
			topdelete = {
				hl = "GitSignsDelete",
				text = "│",
				numhl = "GitSignsDeleteNr",
				linehl = "GitSignsDeleteLn",
			},
			changedelete = {
				hl = "GitSignsChange",
				text = "│",
				numhl = "GitSignsChangeNr",
				linehl = "GitSignsChangeLn",
			},
		},
		current_line_blame = true,
		-- update_debounce = 50
	})
end

return { init = init }
