# https://nixos.wiki/wiki/Node.js
# Run once for setting location for npm
# npm set prefix ~/.npm-global
#Install pnpm
# npm install -g pnpm
#Install all global packages
PACKAGES=$(
	cat <<-END
		pnpm
		neovim
		    @angular/language-server
		    @prisma/language-server
		    vscode-langservers-extracted
		    graphql
		    graphql-language-service-cli
		expo-cli
	END
)

LINTERS=$(
	cat <<-END
		markdownlint markdownlint-cli
		npm-package-json-lint
	END
)

FORMATTER=$(
	cat <<-END
		purty
		prettier
		prettier-plugin-sh
		prettier-plugin-toml
		svelte prettier-plugin-svelte
		@prettier/plugin-xml
		fixjson
		elm-format
	END
)

pnpm install -g ${PACKAGES} ${LINTERS} ${FORMATTER}
