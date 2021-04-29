set encoding=UTF-8
set termguicolors
"Reduce time to wait for key combo
set timeoutlen=500
"Wrap code without breaking word boundary
set wrap
set textwidth=72
set linebreak
"Highlight current line
set cursorline
"Disable file backup
set nobackup
set nowritebackup
"Increase the height of command
set cmdheight=2
"Highlight matching parenthesis
set showmatch
"Add absolute line number"
set number
"Set default direction for splitting panes"
set splitbelow
set splitright
"Make yanked content accessible in clipboard"
"set clipboard=unnamed
set shiftwidth=2
set autoindent
"set cindent
filetype plugin indent on
set nosmartindent
set tabstop=4
set signcolumn=yes
"For better performance"
set lazyredraw
"Minimum rows above and below cursor
set scrolloff=5
"Use a login shell for using .bash_profile
let &shell='/bin/zsh --login'
"Set theme value"
let g:lightline = {
  \ 'colorscheme': 'edge',
  \ }
