local linter = {
  lintCommand = 'dotenv-linter --no-color',
  lintFormats = {
	'%f:%l %m'
  },
  lintStdin = true,
  lintIgnoreExitCode = true
}

return {
  config = linter
}




