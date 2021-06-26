local function init(paq)
	paq{'winston0410/range-highlight.nvim', requires = { 'winston0410/cmd-parser.nvim' }, config = function ()

	require'range-highlight'.setup{}
    end}
	require'range-highlight'.setup{}
end

return {
	init = init
}


