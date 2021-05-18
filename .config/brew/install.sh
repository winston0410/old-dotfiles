FORMULAS=$(cat<<-END
git
mongodb/brew/mongodb-community
mtr
neovim
nmap
node
postgresql
tmux
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
fzf
exa
python
shfmt
bat
fd
ripgrep
deno
rustup
ninja
go
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

brew install --cask $CASKS
brew install $FORMULAS
brew postinstall $POST_INSTALL
# Enable fzf keybinding, run it once only
# $(brew --prefix)/opt/fzf/install
