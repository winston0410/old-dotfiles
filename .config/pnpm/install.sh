#Install pnpm
npm install -g pnpm
#Install all global packages
PACKAGES=$(cat <<-END
vscode-css-languageserver-bin
dockerfile-language-server-nodejs
graphql graphql-language-service-cli
vscode-html-languageserver-bin
vscode-json-languageserver
purescript-language-server
svelte-language-server
typescript typescript-language-server
vim-language-server
vls
prettier
eslint_d
END
)

pnpm install -g ${PACKAGES}
