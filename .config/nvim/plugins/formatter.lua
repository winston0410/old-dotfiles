local function goimports()
	return {
		exe = "goimports",
		args = { vim.api.nvim_buf_get_name(0) },
		stdin = true,
	}
end

local function fnlfmt()
	return {
		exe = "fnlfmt",
		args = { vim.api.nvim_buf_get_name(0) },
		stdin = true,
	}
end

local function prettier()
	return {
		exe = "prettier",
		args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
		stdin = true,
	}
end

local function ktlint()
	return {
		exe = "ktlint",
		args = { "--format", vim.api.nvim_buf_get_name(0) },
		stdin = false,
	}
end

local function purty()
	return {
		exe = "purty",
		args = { "--", vim.api.nvim_buf_get_name(0) },
		stdin = true,
	}
end

local function dockfmt()
	return {
		exe = "dockfmt",
		args = { "--write", "--", vim.api.nvim_buf_get_name(0) },
		stdin = true,
	}
end

local function gofmt()
	return {
		exe = "gofmt",
		args = { "--", vim.api.nvim_buf_get_name(0) },
		stdin = true,
	}
end

local function dartfmt()
	return {
		exe = "dartfmt",
		args = { "--", vim.api.nvim_buf_get_name(0) },
		stdin = true,
	}
end

local function rustfmt()
	return {
		exe = "rustfmt",
		args = { "--emit=stdout" },
		stdin = true,
	}
end

local function luafmt()
	return {
		exe = "lua-format",
		args = { "--", vim.api.nvim_buf_get_name(0) },
		stdin = true,
	}
end

local function nixfmt()
	return {
		exe = "nixfmt",
		args = { "--", vim.api.nvim_buf_get_name(0) },
		stdin = true,
	}
end

local function shfmt()
	return {
		exe = "shfmt",
		-- args = {"-w", "--", vim.api.nvim_buf_get_name(0)},
		args = { "-s", "-w", "--", vim.api.nvim_buf_get_name(0) },
		stdin = false,
	}
end

local function stylua()
	return {
		exe = "stylua",
		-- args = {"-w", "--", vim.api.nvim_buf_get_name(0)},
		args = { "--", vim.api.nvim_buf_get_name(0) },
		stdin = false,
	}
end

local function black()
	return {
		exe = "black",
		-- args = {"-w", "--", vim.api.nvim_buf_get_name(0)},
		args = { "--fast", "--", vim.api.nvim_buf_get_name(0) },
		stdin = false,
	}
end
local function hindent()
	return {
		exe = "hindent",
		-- args = {"-w", "--", vim.api.nvim_buf_get_name(0)},
		args = { "--", vim.api.nvim_buf_get_name(0) },
		stdin = false,
	}
end

local function init(paq)
	paq({ "winston0410/formatter.nvim" })
	require("formatter").setup({
		logging = false,
		filetype = {
			html = { prettier },
			css = { prettier },
			scss = { prettier },
			sass = { prettier },
			less = { prettier },
			javascript = { prettier },
			typescript = { prettier },
			javascriptreact = { prettier },
			typescriptreact = { prettier },
			["javascript.jsx"] = { prettier },
			["typescript.jsx"] = { prettier },
			sh = { shfmt },
			zsh = { shfmt },
			markdown = { prettier },
			json = { prettier },
			yaml = { prettier },
			toml = { prettier },
			vue = { prettier },
			svelte = { prettier },
			python = { black },
			dockerfile = { dockfmt },
			make = {
				-- prettier
			},
			lua = { stylua },
			teal = { stylua },
			rust = { rustfmt },
			nix = { nixfmt },
			go = { gofmt, goimports },
			dart = { dartfmt },
			haskell = { hindent },
			purescript = { purty },
			kotlin = { ktlint },
			fennel = { fnlfmt },
		},
	})
	vim.cmd([[ nnoremap <silent> <C-F> <cmd>write <bar> Format<CR>  ]])
	-- vim.api.nvim_exec([[
	-- augroup FormatAutogroup
	-- autocmd!
	-- autocmd BufWritePost *,html,*.css,*.js,*.jsx,*.ts,*.tsx,*.json,*.yaml,*.toml,*.vue,*.svelte,*.sh,*.md,*.scss,*.sass,*.rs,*.lua FormatWrite
	-- augroup END
	-- ]], true)
end

return { init = init }
