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
	--on_attach=require'completion'.on_attach,
  }
  lspconfig.dockerls.setup{}
  lspconfig.purescriptls.setup{}
  lspconfig.yamlls.setup{}
  lspconfig.vimls.setup{}

  local eslint = require('plugins.lsp-servers.eslint').config
  lspconfig.efm.setup{
	settings = {
	  languages = {
		javascript = { eslint },
		javascriptreact = { eslint },
		['javascript.jsx'] = { eslint },
		typescript = { eslint },
		typescriptreact = { eslint },
		['typescript.jsx'] = { eslint },
	  }
	},
	filetypes = {
	  "javascript",
	  "javascriptreact",
	  "javascript.jsx",
	  "typescript",
	  "typescript.tsx",
	  "typescriptreact"
	}
  }
  lspconfig.dhall_lsp_server.setup{}
end

return {
  init = init
}
