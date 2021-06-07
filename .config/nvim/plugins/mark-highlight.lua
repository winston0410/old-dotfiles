local function init(paq)
		paq{'winston0410/mark-highlight.nvim'}
		require'mark-highlight'.setup{}
end

return {
	init = init
}

