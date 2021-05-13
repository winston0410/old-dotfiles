local root_dir = function() return vim.fn.getcwd() end

local on_attach = function(client)
  -- Show diagonistic messages
  vim.cmd("command! LspNextDiagonistic lua vim.lsp.diagnostic.goto_next{ wrap = true }")
  vim.cmd("command! LspOpenDiagonisticList lua vim.lsp.diagnostic.set_loclist()")
  vim.cmd("command! LspShowTypeSignature lua vim.lsp.buf.type_definition()")
  vim.cmd("command! LspHover lua vim.lsp.buf.hover()")
  vim.cmd("command! LspToDefinition lua vim.lsp.buf.definition()")
  vim.cmd("command! LspToTypeDefinition lua vim.lsp.buf.type_definition()")
  vim.cmd("command! LspCodeAction lua vim.lsp.buf.code_action()")
  vim.cmd("command! LspFormat lua vim.lsp.buf.formatting()")
  vim.cmd("command! LspRenameSymbol lua vim.lsp.buf.rename()")
end

local function init(paq)
  paq{'neovim/nvim-lspconfig'}
  local lspconfig = require('lspconfig')
  lspconfig.html.setup{
	root_dir = root_dir,
	on_attach = on_attach
  }
  lspconfig.cssls.setup{
	root_dir = root_dir,
	on_attach = on_attach
  }
  lspconfig.jsonls.setup{
	root_dir = root_dir,
	on_attach = on_attach
  }
  lspconfig.rust_analyzer.setup{
	  root_dir = root_dir,
	  on_attach = on_attach
  }
  lspconfig.svelte.setup{
	root_dir = root_dir
  }
  lspconfig.vuels.setup{
	  root_dir = root_dir,
	  on_attach = on_attach
  }
  lspconfig.sqls.setup{}
  lspconfig.graphql.setup{}
  lspconfig.angularls.setup{}
  --lspconfig.bashls.setup{}
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

  --   lspconfig.tsserver.setup{
	-- root_dir = root_dir
	-- --on_attach=require'completion'.on_attach,
	--   }
	lspconfig.denols.setup{
	  on_attach = on_attach,
	  root_dir = root_dir
	}
	lspconfig.dockerls.setup{ on_attach = on_attach, root_dir = root_dir }
	lspconfig.purescriptls.setup{ on_attach = on_attach, root_dir = root_dir }
	lspconfig.yamlls.setup{ on_attach = on_attach, root_dir = root_dir }
	lspconfig.vimls.setup{ on_attach = on_attach, root_dir = root_dir }

	local eslint = require('plugins.lsp-servers.eslint').config
	local shellcheck = require('plugins.lsp-servers.shellcheck').config
	local markdownlint = require('plugins.lsp-servers.markdownlint').config
	local hadolint = require('plugins.lsp-servers.hadolint').config
	local dotenv_linter = require('plugins.lsp-servers.dotenv_linter').config
	local htmlhint = require('plugins.lsp-servers.htmlhint').config

	lspconfig.efm.setup{
	  on_attach = on_attach,
	  root_dir = root_dir,
	  settings = {
		languages = {
		  javascript = { eslint },
		  html = { htmlhint },
		  javascriptreact = { eslint },
		  ['javascript.jsx'] = { eslint },
		  typescript = { eslint },
		  typescriptreact = { eslint },
		  ['typescript.jsx'] = { eslint },
		  dockerfile = { hadolint },
		  sh = { shellcheck },
		  zsh = { shellcheck },
		  markdown = { markdownlint },
		  dotenv = { dotenv_linter },
		},
	  },
	  filetypes = {
		"dotenv",
		"sh",
		"zsh",
		"dockerfile",
		"markdown",
		"javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescript.tsx",
		"typescriptreact"
	  }
	}
  end

  return {
	init = init
  }
