local function init(paq)
	paq{'winston0410/better-O.nvim'}
	require'better-O'.setup{ enter_insert_mode = false }
end

return {
	init = init
}


