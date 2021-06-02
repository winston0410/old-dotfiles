export FZF_DEFAULT_COMMAND='fd --type file'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' 
	--color=fg:#c5cdd9,bg:#262729,hl:#6cb6eb 
	--color=fg+:#c5cdd9,bg+:#262729,hl+:#5dbbc1 
	--color=info:#88909f,prompt:#ec7279,pointer:#d38aea 
	--color=marker:#a0c980,spinner:#ec7279,header:#5dbbc1'
export FZF_COMPLETION_OPTS="--height 100% --preview 'bat --style=numbers --color=always --line-range :500 {}'"
