local function prettier()
    return {
        exe = "prettier",
        args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0)},
        stdin = true
    }
end

local function dockfmt()
    return {
        exe = "dockfmt",
        args = {"--write", "--", vim.api.nvim_buf_get_name(0)},
        stdin = true
    }
end

local function rustfmt()
    return {
        exe = "rustfmt",
        args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0)},
        stdin = true
    }
end

local function luafmt()
    return {
        exe = "lua-format",
        args = {"--", vim.api.nvim_buf_get_name(0)},
        stdin = true
    }
end

local function nixfmt()
    return {
        exe = "nixfmt",
        args = {"--", vim.api.nvim_buf_get_name(0)},
        stdin = true
    }
end

local function shfmt()
    return {
        exe = "shfmt",
        -- args = {"-w", "--", vim.api.nvim_buf_get_name(0)},
        args = {"-s", "-w", "--", vim.api.nvim_buf_get_name(0)},
        stdin = true
    }
end

local function stylua()
    return {
        exe = "stylua",
        -- args = {"-w", "--", vim.api.nvim_buf_get_name(0)},
        args = {"--", vim.api.nvim_buf_get_name(0)},
        stdin = true
    }
end

local function init(paq)
    paq({"mhartington/formatter.nvim"})
    require("formatter").setup({
        logging = false,
        filetype = {
            html = {prettier},
            css = {prettier},
            scss = {prettier},
            sass = {prettier},
            javascript = {prettier},
            typescript = {prettier},
            javascriptreact = {prettier},
            typescriptreact = {prettier},
            ["javascript.jsx"] = {prettier},
            ["typescript.jsx"] = {prettier},
            sh = {shfmt},
            zsh = {shfmt},
            markdown = {prettier},
            json = {prettier},
            yaml = {prettier},
            toml = {prettier},
            vue = {prettier},
            svelte = {prettier},
            dockerfile = {dockfmt},
            make = {
                -- prettier
            },
            -- lua = { stylua },
            lua = {luafmt},
            rust = {rustfmt},
            nix = {nixfmt}
        }
    })
    vim.cmd([[ nnoremap <silent> <C-F> <cmd>write <bar> Format<CR>  ]])
    -- vim.api.nvim_exec([[
    -- augroup FormatAutogroup
    -- autocmd!
    -- autocmd BufWritePost *,html,*.css,*.js,*.jsx,*.ts,*.tsx,*.json,*.yaml,*.toml,*.vue,*.svelte,*.sh,*.md,*.scss,*.sass,*.rs,*.lua FormatWrite
    -- augroup END
    -- ]], true)
end

return {init = init}
