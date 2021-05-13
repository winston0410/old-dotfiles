local function prettier()
  return {
	exe = "prettier",
	--Can prettier pick up config automatically?
	args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0)},
	stdin = true
  }
end

local function luafmt()
  return {
	exe = "prettier",
	--Can prettier pick up config automatically?
	args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0)},
	stdin = true
  }
end

local function shfmt()
  return {
	exe = "shfmt",
	args = {"-w", vim.api.nvim_buf_get_name(0)},
	stdin = true
  }
end

local function init(paq)
  paq{'mhartington/formatter.nvim'}
  --print( vim.api.nvim_buf_get_name(0)) 
  require('formatter').setup({
	logging = false,
	filetype = {
	  html = {
		prettier
	  },
	  css = {
		prettier
	  },
	  scss = {
		prettier
	  },
	  sass = {
		prettier
	  },
	  javascript = {
		prettier
	  },
	  typescript = {
		prettier
	  },
	  javascriptreact = {
		prettier
	  },
	  typescriptreact = {
		prettier
	  },
	  ['javascript.jsx'] = {
		prettier
	  },
	  ['typescript.jsx'] = {
		prettier
	  },
	  sh = {
		shfmt
	  },
	  zsh = {
		shfmt
	  },
	  markdown = {
		prettier
	  },
	  json = {
		prettier
	  },
	  yaml = {
		prettier
	  },
	  toml = {
		prettier
	  },
	  vue = {
		prettier
	  },
	  svelte = {
		prettier
	  },
	  dockerfile = {
		--prettier
	  },
	  make = {
		--prettier
	  },
	  lua = {
		luafmt
	  }
	}
  })
  vim.cmd [[ nnoremap <silent> <C-F> :Format<CR>  ]]
  -- vim.api.nvim_exec([[
  -- augroup FormatAutogroup
  -- autocmd!
  -- autocmd BufWritePost *,html,*.css,*.js,*.jsx,*.ts,*.tsx,*.json,*.yaml,*.toml,*.vue,*.svelte,*.sh,*.md,*.scss,*.sass,*.rs,*.lua FormatWrite
  -- augroup END
  -- ]], true)
end

return {
  init = init
}


