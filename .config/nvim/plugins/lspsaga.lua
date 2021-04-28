local function init(paq)
  paq{'glepnir/lspsaga.nvim'}
  local saga = require'lspsaga'
  saga.init_lsp_saga {

  }
end

return {
  init = init
}


