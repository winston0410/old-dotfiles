source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh
source /nix/var/nix/profiles/default/etc/profile.d/nix.sh
# Enter vi mode
bindkey '^[' vi-cmd-mode
KEYTIMEOUT=1
unsetopt share_history

[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true
#  Path for nix darwin
export NIX_PATH=darwin-config=$HOME/.nixpkgs/darwin-configuration.nix:$HOME/.nix-defexpr/channels:$NIX_PATH
#  set variable for daemon

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
	OMZP::gitfast \
	OMZP::pip \
	OMZP::golang \
	# OMZP::tmux \
	# OMZP::rustup/_rustup \

	#  Disable fzf keybindings here as it is now set in nix
	#  [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
	source ./fzf-setting.zsh
