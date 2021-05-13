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

# Use faster alternatives
alias find="fd"
alias grep="rg"
# fzf with preview
alias pfzf="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
#Non essential
# Keybindings
# Enter vi mode
# bindkey '^[' vi-cmd-mode
# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true
# Add path for getting Python packages
export PATH="/Users/hugosum/Library/Python/3.9/bin:$PATH"
# Add path for getting go binary
export PATH="/usr/local/go/bin:$PATH"
export GOPATH=$HOME/go

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
	zsh-users/zsh-autosuggestions \
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
	OMZP::golang \
	# OMZP::rustup/_rustup \

		[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
	export FZF_DEFAULT_COMMAND='fd --type file'
	export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
	export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' 
	--color=fg:#c5cdd9,bg:#262729,hl:#6cb6eb 
	--color=fg+:#c5cdd9,bg+:#262729,hl+:#5dbbc1 
	--color=info:#88909f,prompt:#ec7279,pointer:#d38aea 
	--color=marker:#a0c980,spinner:#ec7279,header:#5dbbc1'
	export FZF_COMPLETION_OPTS="--height 100% --preview 'bat --style=numbers --color=always --line-range :500 {}'"
