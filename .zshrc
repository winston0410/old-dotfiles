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

#Non essential
# Keybindings
# Enter vi mode
# bindkey '^[' vi-cmd-mode
# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true
# Add path for getting Python packages
export PATH="/Users/hugosum/Library/Python/3.9/bin:$PATH"

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

zinit wait lucid light-mode for \
	atinit"zicompinit; zicdreplay" \
	compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh' \
	sindresorhus/pure \
	agkozak/zsh-z \
	zdharma/fast-syntax-highlighting \
	 as"completion" \
        OMZP::docker/_docker \
		OMZP::node \
		OMZP::npm \
		OMZP::yarn \
		OMZP::brew \
		OMZP::deno \
		OMZP::docker-compose \
		OMZP::tmux \
		OMZP::gitfast \
		OMZP::pip \
		# OMZP::rust/_rust \
		OMZP::rustup/_rustup \
	atload"_zsh_autosuggest_start" \
	zsh-users/zsh-autosuggestions \

