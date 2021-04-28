local function init(paq)
  paq{'neovim/nvim-lspconfig'}
  local lspconfig = require('lspconfig')

  lspconfig.html.setup{}
  lspconfig.cssls.setup{}
  lspconfig.jsonls.setup{}
  lspconfig.rust_analyzer.setup{}
  lspconfig.svelte.setup{}
  lspconfig.vuels.setup{}
  lspconfig.sqls.setup{}
  lspconfig.graphql.setup{}
  lspconfig.angularls.setup{}
  lspconfig.bashls.setup{}
  lspconfig.sumneko_lua.setup{
	--cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
	settings = {
	  Lua = {
		runtime = {
		  -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
		  version = 'LuaJIT',
		  -- Setup your lua path
		  path = vim.split(package.path, ';'),
		},
		diagnostics = {
		  -- Get the language server to recognize the `vim` global
		  globals = {'vim'},
		},
		workspace = {
		  -- Make the server aware of Neovim runtime files
		  library = {
			[vim.fn.expand('$VIMRUNTIME/lua')] = true,
			[vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
		  },
		},
		-- Do not send telemetry data containing a randomized but unique identifier
		telemetry = {
		  enable = false,
		},
	  },
	}
  }

  lspconfig.tsserver.setup{
	init_options = {
	  on_attach = function()
		print('language server now attached')
	  end,
	  linters = {
		sourceName = "eslint",
		command = "eslint_d",
		rootPatterns = {".eslintrc.js", "package.json"},
		debounce = 100,
		args = {"--stdin", "--stdin-filename", "%filepath", "--format", "json"},
		parseJson = {
		  errorsRoot = "[0].messages",
		  line = "line",
		  column = "column",
		  endLine = "endLine",
		  endColumn = "endColumn",
		  message = "${message} [${ruleId}]",
		  security = "severity"
		},
		securities = {[2] = "error", [1] = "warning"}
	  },
	  formatters = {
		prettier = {command = "prettier", args = {"--stdin-filepath", "%filepath"}},
		formatFileTypes = {
		  typescript = "prettier",
		  typescriptreact = "prettier"
		}
	  }
	}
  }
  lspconfig.dockerls.setup{}
  lspconfig.purescriptls.setup{}
  lspconfig.yamlls.setup{}

end

return {
  init = init
}

