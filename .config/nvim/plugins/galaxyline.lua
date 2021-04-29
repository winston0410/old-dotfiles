local function init(paq)
  paq{'glepnir/galaxyline.nvim', branch='main'}
  --require('spaceline')
  require('plugins.siduck76')
end

return {
	init = init
}


