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
