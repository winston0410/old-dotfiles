"Specify a directory for plugins"
call plug#begin('~/.config/nvim/plugged')

"Neovim theme"
Plug 'joshdick/onedark.vim'
"Lightline vim"
Plug 'itchyny/lightline.vim'
"Multiple language support"
Plug 'sheerun/vim-polyglot'
"Togglable terminal"
Plug 'caenrique/nvim-toggle-terminal'
"Plug 'machakann/vim-sandwich'
Plug 'easymotion/vim-easymotion'
"NerdTree File Menu"
Plug 'preservim/nerdtree' | 
	\ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
"ALE"
"Plug 'maximbaz/lightline-ale'
"Plug 'dense-analysis/ale'
"Git"
Plug 'https://github.com/airblade/vim-gitgutter.git'
"Comment out code"
Plug 'preservim/nerdcommenter'
"Auto resizing"
"Plug 'camspiers/animate.vim'
"Plug 'camspiers/lens.vim'
"Auto pair"
"Plug 'Krasjet/auto.pairs'

"Initialize plugin system"
call plug#end()
"Make NerdTree shows all hidden files"
source /Users/hugosum/.config/nvim/values.vim
source /Users/hugosum/.config/nvim/keymap.vim
source /Users/hugosum/.config/nvim/terminal.vim
source /Users/hugosum/.config/nvim/nerd-tree.vim

let g:ale_fix_on_save = 1
"onedark theme"
if !exists('g:syntax_on')
	syntax enable
endif
"syntax on
colorscheme onedark
"set guifont=HackNerdFontCompleteM-Regular:h22
