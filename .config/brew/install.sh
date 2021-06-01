# TAPS=$(cat<<-END
# dart-lang/dart
# END
# )

FORMULAS=$(cat<<-END
mongodb/brew/mongodb-community
mtr
nmap
postgresql
efm-langserver
luarocks
dotenv-linter
gcc
llvm
python
shfmt
rustup
END
)

CASKS=$(cat<<-END
alacritty
insomnia
devdocs
END
)

# POST_INSTALL=$(cat <<-END
# node
# END
# )

brew tap $TAPS
brew install --cask $CASKS
brew install $FORMULAS
brew postinstall $POST_INSTALL
# Enable fzf keybinding, run it once only
# $(brew --prefix)/opt/fzf/install
