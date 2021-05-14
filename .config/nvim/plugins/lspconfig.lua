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
	lspconfig.bashls.setup{}
	local sumneko_root_path = os.getenv("HOME") ..
	"/.config/standalone/lua-language-server"
	local sumneko_binary = sumneko_root_path .. "/bin/macOS/lua-language-server"
	lspconfig.sumneko_lua.setup({
		cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
		capabilities = capabilities,
		settings = {
			Lua = {
				runtime = {version = 'LuaJIT', path = vim.split(package.path, ';')},
				completion = {enable = true, callSnippet = "Both"},
				diagnostics = {
					enable = true,
					globals = {'vim', 'describe'},
					disable = {"lowercase-global"}
				},
				workspace = {
					library = {
						[vim.fn.expand('$VIMRUNTIME/lua')] = true,
						[vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
						[vim.fn.expand('/usr/share/awesome/lib')] = true
					},
					-- adjust these two values if your performance is not optimal
					maxPreload = 2000,
					preloadFileSize = 1000
				}
			}
		},
		on_attach = on_attach
	})
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
		local yamllint = require('plugins.lsp-servers.yamllint').config
		local fixjson = require('plugins.lsp-servers.fixjson').config
		local flake8 = require('plugins.lsp-servers.flake8').config

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
					yaml = { yamllint },
					json = { fixjson },
					python = { flake8 },
				},
			},
			filetypes = {
				"dotenv",
				"json",
				"yaml",
				"sh",
				"zsh",
				"dockerfile",
				"markdown",
				"javascript",
				"javascriptreact",
				"javascript.jsx",
				"typescript",
				"typescript.tsx",
				"typescriptreact",
				"python"
			}
		}

		lspconfig.gopls.setup{
			on_attach = on_attach,
			-- capabilities = capabilities,
			cmd = {"gopls", "serve"},
			settings = {
				gopls = {
					analyses = {
						unusedparams = true,
					},
					staticcheck = true,
				},
			},
		}
	end

	return {
		init = init
	}
