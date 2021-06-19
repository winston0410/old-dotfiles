TAPS=$(cat<<-END
wez/wezterm
END
)

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
clang-format
python
shfmt
rustup
END
)

CASKS=$(cat<<-END
alacritty
insomnia
devdocs
keycastr
wezterm
flutter
END
)

brew tap $TAPS
brew install --cask $CASKS
brew install $FORMULAS
# Enable fzf keybinding, run it once only
# $(brew --prefix)/opt/fzf/install
