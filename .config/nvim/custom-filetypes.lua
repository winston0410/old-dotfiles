vim.api.nvim_exec([[
augroup envFiletype
autocmd!
autocmd BufNewFile,BufRead *.env set filetype=dotenv.sh
autocmd BufNewFile,BufRead *.tl set filetype=teal
autocmd BufNewFile,BufRead *.nix set filetype=nix
autocmd BufNewFile,BufRead package.json set filetype=packageJson.json
augroup END
]], true)
