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
zplug
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
END
)

CASKS=$(cat<<-END
alacritty
insomnia
font-hack-nerd-font	
END
)

brew install --cask $CASKS
brew install $FORMULAS
