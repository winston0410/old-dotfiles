local function init(paq)
  paq{'sainnhe/edge'}
  -- vim.g.edge_style = 'aura'
  vim.g.edge_transparent_background = 1
  vim.g.edge_sign_column_background = 'none'
  vim.g.edge_diagnostic_text_highlight = 1
  vim.g.edge_diagnostic_line_highlight = 1
  vim.g.edge_diagnostic_virtual_text = 'colored'
  vim.g.edge_better_performance = 1
  --vim.cmd([[ highlight! link VirtualTextHint Blue ]])
end

return {
  init = init
}


