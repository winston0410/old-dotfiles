local helper = require("plugins.helper")

local root_dir = function() return vim.fn.getcwd() end

local on_attach = function(client)
    -- vim.lsp.handlers["textDocument/publishDiagnostics"] =
    -- vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    -- virtual_text = true,
    -- signs = true,
    -- update_in_insert = true
    -- })
    -- -- Show diagonistic messages
    vim.cmd(
        "command! LspNextDiagonistic lua vim.lsp.diagnostic.goto_next{ wrap = true }")
    vim.cmd(
        "command! LspOpenDiagonisticList lua vim.lsp.diagnostic.set_loclist()")
    vim.cmd("command! LspShowTypeSignature lua vim.lsp.buf.type_definition()")
    vim.cmd("command! LspHover lua vim.lsp.buf.hover()")
    vim.cmd("command! LspToDefinition lua vim.lsp.buf.definition()")
    vim.cmd("command! LspToTypeDefinition lua vim.lsp.buf.type_definition()")
    vim.cmd("command! LspCodeAction lua vim.lsp.buf.code_action()")
    vim.cmd("command! LspFormat lua vim.lsp.buf.formatting()")
    vim.cmd("command! LspRenameSymbol lua vim.lsp.buf.rename()")
end

local function init(paq)
    paq {'neovim/nvim-lspconfig'}
    -- paq {'folke/lua-dev.nvim'}
    local lspconfig = require('lspconfig')
    lspconfig.html.setup {root_dir = root_dir, on_attach = on_attach}
    lspconfig.cssls.setup {root_dir = root_dir, on_attach = on_attach}
    lspconfig.jsonls.setup {root_dir = root_dir, on_attach = on_attach}
    lspconfig.rust_analyzer.setup {
        root_dir = root_dir,
        on_attach = on_attach,
        checkOnSave = {
            allFeatures = true,
            overrideCommand = {
                'cargo', 'clippy', '--workspace', '--message-format=json',
                '--all-targets', '--all-features'
            }
        }
    }
    lspconfig.dartls.setup {root_dir = root_dir, on_attach = on_attach}
    lspconfig.svelte.setup {root_dir = root_dir}
    lspconfig.vuels.setup {root_dir = root_dir, on_attach = on_attach}
    lspconfig.sqls.setup {on_attach = on_attach, root_dir = root_dir}
    lspconfig.graphql.setup {on_attach = on_attach, root_dir = root_dir}
    lspconfig.angularls.setup {on_attach = on_attach, root_dir = root_dir}
    lspconfig.bashls.setup {on_attach = on_attach, root_dir = root_dir}
    lspconfig.kotlin_language_server.setup {
        on_attach = on_attach,
        root_dir = root_dir
    }
    lspconfig.cmake.setup {
        cmd = {"cmake-language-server"},
        filetypes = {"cmake"},
        on_attach = on_attach,
        root_dir = root_dir
    }
    local sumneko_root_path = os.getenv("HOME") ..
                                  "/.config/standalone/lua-language-server"
    local sumneko_binary = sumneko_root_path .. "/bin/macOS/lua-language-server"
    lspconfig.sumneko_lua.setup({
        cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
        capabilities = capabilities,
        settings = {
            Lua = {
                runtime = {
                    version = 'LuaJIT',
                    path = vim.split(package.path, ';')
                },
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
    lspconfig.tsserver.setup {root_dir = root_dir, on_attach = on_attach}
    -- lspconfig.denols.setup {on_attach = on_attach, root_dir = root_dir}
    lspconfig.dockerls.setup {on_attach = on_attach, root_dir = root_dir}
    lspconfig.purescriptls.setup {on_attach = on_attach, root_dir = root_dir}
    lspconfig.yamlls.setup {on_attach = on_attach, root_dir = root_dir}
    lspconfig.vimls.setup {on_attach = on_attach, root_dir = root_dir}
    lspconfig.rnix.setup {on_attach = on_attach, root_dir = root_dir}
    lspconfig.pyright.setup {
        on_attach = on_attach,
        root_dir = root_dir,
        cmd = {"pyright", "--stdio"}
    }

    local eslint = require('plugins.lsp-servers.eslint').config
    local shellcheck = require('plugins.lsp-servers.shellcheck').config
    local markdownlint = require('plugins.lsp-servers.markdownlint').config
    local hadolint = require('plugins.lsp-servers.hadolint').config
    local dotenv_linter = require('plugins.lsp-servers.dotenv_linter').config
    local htmlhint = require('plugins.lsp-servers.htmlhint').config
    local yamllint = require('plugins.lsp-servers.yamllint').config
    local fixjson = require('plugins.lsp-servers.fixjson').config
    local flake8 = require('plugins.lsp-servers.flake8').config
    local golint = require('plugins.lsp-servers.golint').config
    local checkmake = require('plugins.lsp-servers.checkmake').config
    local clippy = require('plugins.lsp-servers.clippy').config

    local efm_config = {
        on_attach = on_attach,
        root_dir = root_dir,
        settings = {
            languages = {
                javascript = {eslint},
                html = {htmlhint},
                javascriptreact = {eslint},
                ['javascript.jsx'] = {eslint},
                typescript = {eslint},
                typescriptreact = {eslint},
                ['typescript.jsx'] = {eslint},
                dockerfile = {hadolint},
                sh = {shellcheck},
                zsh = {shellcheck},
                markdown = {markdownlint},
                dotenv = {dotenv_linter},
                yaml = {yamllint},
                json = {fixjson},
                go = {golint},
                python = {flake8},
                make = {checkmake}
                -- rust = {clippy}
            }
        }
    }

    efm_config.filetypes = helper.get_table_keys(efm_config.settings.languages)

    lspconfig.efm.setup(efm_config)

    lspconfig.gopls.setup {
        on_attach = on_attach,
        -- capabilities = capabilities,
        cmd = {"gopls", "serve"},
        settings = {
            gopls = {analyses = {unusedparams = true}, staticcheck = true}
        }
    }
end

return {init = init}
