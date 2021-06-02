export FZF_DEFAULT_COMMAND='fd --type file'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
#  Edge theme
#  export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' 
#  --color=fg:#c5cdd9,bg:#262729,hl:#6cb6eb 
#  --color=fg+:#c5cdd9,bg+:#262729,hl+:#5dbbc1 
#  --color=info:#88909f,prompt:#ec7279,pointer:#d38aea 
#  --color=marker:#a0c980,spinner:#ec7279,header:#5dbbc1'
#  Tokyonight theme

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' 
--color=fg:#c0caf5,bg:#1a1b26,hl:#bb9af7
--color=fg+:#c0caf5,bg+:#1a1b26,hl+:#7dcfff
--color=info:#7aa2f7,prompt:#7dcfff,pointer:#7dcfff 
--color=marker:#9ece6a,spinner:#9ece6a,header:#9ece6a'
export FZF_COMPLETION_OPTS="--height 100% --preview 'bat --style=numbers --color=always --line-range :500 {}'"
