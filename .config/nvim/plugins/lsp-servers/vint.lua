local config = {
	lintCommand = "vint --enable-neovim --",
	lintStdin = true,
	lintFormats = { "%f:%l:%c: %m" },
}

return {
	config = config,
}
