local function init(paq)
    paq {'b3nj5m1n/kommentary'}
     require('kommentary.config').configure_language("default", {
         prefer_single_line_comments = true
     })
     vim.g.kommentary_create_default_mappings = false
     vim.api.nvim_set_keymap("n", "<leader>/", "<plug>kommentary_line_default",
                             {})
     vim.api.nvim_set_keymap("n", "<leader>/", "<plug>kommentary_motion_default",
                             {})
     vim.api.nvim_set_keymap("v", "<leader>/", "<plug>kommentary_visual_default",
                             {})
    -- vim.cmd([[ nnoremap <expr> <leader>/ (v:count ? "<cmd>commenttoggle<cr>" : ':set operatorfunc=commentoperator<cr>g@') ]])
    -- paq {'terrortylor/nvim-comment'}
    -- require('nvim_comment').setup({create_mappings = false})
    -- vim.cmd([[ nnoremap <expr> <leader>/ "<cmd>commenttoggle<cr>" ]])
    -- vim.cmd([[ vnoremap <expr> <leader>/ "<cmd>commenttoggle<cr>" ]])
    -- vim.cmd([[ command! -range cm <line1>,<line2>commenttoggle ]])
end

return {init = init}

-- vim.cmd([[ nnoremap <expr> <leader>/ v:count . "<CMD>CommentToggle<CR>" ]])
