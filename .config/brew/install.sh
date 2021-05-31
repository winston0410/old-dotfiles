TAPS=$(cat<<-END
dart-lang/dart
END
)

FORMULAS=$(cat<<-END
git
mongodb/brew/mongodb-community
mtr
neovim
nmap
node
postgresql
zsh
zsh-autosuggestions
zsh-syntax-highlighting
efm-langserver
luarocks
shellcheck
dotenv-linter
gcc
llvm
hadolint
exa
python
shfmt
deno
rustup
END
)

CASKS=$(cat<<-END
alacritty
insomnia
font-hack-nerd-font	
devdocs
END
)

POST_INSTALL=$(cat <<-END
node
END
)

brew tap $TAPS
brew install --cask $CASKS
brew install $FORMULAS
brew postinstall $POST_INSTALL
# Enable fzf keybinding, run it once only
# $(brew --prefix)/opt/fzf/install
