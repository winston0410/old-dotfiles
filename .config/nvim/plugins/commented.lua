local function init(paq)
	paq{'winston0410/commented.nvim'}
	require'commented'.setup{}
end

return {
	init = init
}


