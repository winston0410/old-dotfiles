export ZPLUG_HOME=$(brew --prefix)/opt/zplug
source $ZPLUG_HOME/init.zsh
# Alias
alias ls="exa --icons"
alias vi="nvim"
alias vim="nvim"
alias vimdiff="nvim -d"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
# Use gcc10 instead of AppleClang
alias gcc='gcc-10'
alias cc='gcc-10'
alias g++='g++-10'
alias c++='c++-10'
# Add pip3 alias
alias pip="pip3.9"
#Use pure prompt
autoload -U promptinit; 

promptinit
prompt pure
autoload -U compinit; 
compinit -y
# Plugins
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
zplug "agkozak/zsh-z"
#zplug "jeffreytse/zsh-vi-mode"
zplug "plugins/gitfast",   from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/docker-compose", from:oh-my-zsh
zplug "plugins/docker-compose", from:oh-my-zsh
zplug "plugins/npm", from:oh-my-zsh
zplug "plugins/yarn", from:oh-my-zsh
zplug "plugins/nvm", from:oh-my-zsh
zplug "plugins/git-flow", from:oh-my-zsh
zplug "plugins/deno", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh
zplug "plugins/brew", from:oh-my-zsh

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -r -q; then
	echo; zplug install
  else
	echo
  fi
fi
zplug load
#Non essential
# Keybindings
# Enter vi mode
bindkey '^[' vi-cmd-mode
# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true
# Add path for getting Python packages
export PATH="/Users/hugosum/Library/Python/3.9/bin:$PATH"
