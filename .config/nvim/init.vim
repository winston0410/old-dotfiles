source $HOME/.config/nvim/keymap.vim
source $HOME/.config/nvim/command-alias.vim
source $HOME/.config/nvim/terminal.vim
"Specify a directory for plugins"
call plug#begin('~/.config/nvim/plugged')

"Neovim theme"
Plug 'joshdick/onedark.vim'
"Lightline vim"
Plug 'itchyny/lightline.vim'
"Multiple language support"
Plug 'sheerun/vim-polyglot'
"Togglable terminal"
source $HOME/.config/nvim/toggle-terminal.vim
Plug 'machakann/vim-sandwich'
source $HOME/.config/nvim/easy-motion.vim
source $HOME/.config/nvim/nerd-tree.vim

Plug 'ryanoasis/vim-devicons'
"ALE"
"Plug 'maximbaz/lightline-ale'
"Plug 'dense-analysis/ale'
source $HOME/.config/nvim/gitgutter.vim
"Comment out code"
source $HOME/.config/nvim/nerd-commenter.vim
"Auto resizing"
"Plug 'camspiers/animate.vim'
"Plug 'camspiers/lens.vim'
"Auto pair"
"Plug 'Krasjet/auto.pairs'

"Initialize plugin system"
call plug#end()
"Make NerdTree shows all hidden files"
source $HOME/.config/nvim/values.vim

let g:ale_fix_on_save = 1
"onedark theme"
if !exists('g:syntax_on')
	syntax enable
endif
colorscheme onedark
