export ZPLUG_HOME=$(brew --prefix)/opt/zplug
source $ZPLUG_HOME/init.zsh
# Alias
alias vim="nvim"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
#Use pure prompt
autoload -U promptinit; 

promptinit
prompt pure
autoload -U compinit; 
#eval "$(starship init zsh)"
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

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi
zplug load
#Non essential
# Keybindings
# Enter vi mode
bindkey ';;' vi-cmd-mode
ZVM_VI_ESCAPE_BINDKEY=jk
