# https://nixos.wiki/wiki/Node.js
# Run once for setting location for npm
# npm set prefix ~/.npm-global
#Install pnpm
# npm install -g pnpm
#Install all global packages
PACKAGES=$(cat <<-END
pnpm
neovim
bash-language-server
vscode-langservers-extracted
dockerfile-language-server-nodejs
graphql graphql-language-service-cli
purescript-language-server
svelte-language-server
typescript typescript-language-server
vim-language-server
yaml-language-server
@angular/language-server
vls
pyright
@prisma/language-server
expo-cli
END
)

LINTERS=$(cat <<-END
eslint_d
markdownlint markdownlint-cli
npm-package-json-lint
END
)

FORMATTER=$(cat <<-END
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
