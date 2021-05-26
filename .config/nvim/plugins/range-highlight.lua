local function init(paq)
	paq{'winston0410/range-highlight.nvim'}
	require'range-highlight'.setup{}
end

return {
	init = init
}


