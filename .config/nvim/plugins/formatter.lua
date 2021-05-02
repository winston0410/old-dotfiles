local function init(paq)
  paq{'mhartington/formatter.nvim'}
  require('formatter').setup({
	logging = false,
	filetype = {
	  javascript = {
		function()
		  return {
			exe = "prettier",
			args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), '--single-quote'},
			stdin = true
		  }
		end
	  },
	  lua = {
		-- luafmt
		function()
		  return {
			exe = "luafmt",
			args = {"--indent-count", 2, "--stdin"},
			stdin = true
		  }
		end
	  }
	}
  })
  vim.cmd [[ nnoremap <silent> <C-F> :Format<CR>  ]]
  vim.api.nvim_exec([[
  augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.rs,*.lua FormatWrite
  augroup END
  ]], true)
end

return {
  init = init
}


