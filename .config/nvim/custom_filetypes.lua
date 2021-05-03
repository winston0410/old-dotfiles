vim.api.nvim_exec([[
augroup envFiletype
autocmd!
autocmd BufNewFile,BufRead *.env set filetype=dotenv.sh
autocmd BufNewFile,BufRead package.json set filetype=packageJson.json
augroup END
]], true)
