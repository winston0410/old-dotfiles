local function init(paq)
	paq{'winston0410/range-highlight.nvim'}
	paq{'winston0410/cmd-parser.nvim'}
	require'range-highlight'.setup{}
end

return {
	init = init
}


