#Install pnpm
npm install -g pnpm
#Install all global packages
PACKAGES=$(cat <<-END
bash-language-server
vscode-css-languageserver-bin
dockerfile-language-server-nodejs
graphql graphql-language-service-cli
vscode-html-languageserver-bin
vscode-json-languageserver
purescript-language-server
svelte-language-server
typescript typescript-language-server
vim-language-server
yaml-language-server
vls
pyright
END
)

LINTERS=$(cat <<-END
eslint_d
markdownlint markdownlint-cli
npm-package-json-lint
END
)

FORMATTER=$(cat <<-END
prettier
prettier-plugin-sh
prettier-plugin-toml
svelte prettier-plugin-svelte
@prettier/plugin-xml
fixjson
END
)

pnpm install -g ${PACKAGES} ${LINTERS} ${FORMATTER}
