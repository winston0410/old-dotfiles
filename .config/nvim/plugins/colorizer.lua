local function init(paq)
  paq{'norcalli/nvim-colorizer.lua'}
  require'colorizer'.setup{}
end

return {
  init = init
}


