local function init(paq)
	paq{'winston0410/better-O.nvim'}
	require'better-O'.setup()
end

return {
	init = init
}


