local function init(paq)
	paq({ "winston0410/mark-radar.nvim" })
	require("mark-radar").setup({
        background_highlight = true
	})
end

return {
	init = init,
}
