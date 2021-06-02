set encoding=UTF-8
set termguicolors
" Add mouse support for scrolling correctly in tmux
set mouse=nvic
"Reduce time to wait for key combo
set timeoutlen=400
set updatetime=500
" Hide mode message
set noshowmode
"Wrap code without breaking word boundary
set wrap
set linebreak
" Enable syntax
syntax enable
"Highlight current line
"set cursorline
"Disable file backup
set nobackup
set nowritebackup
"Increase the height of command
set cmdheight=1
"Highlight matching parenthesis
set showmatch
"Use relative number"
set number
set relativenumber
"Set default direction for splitting panes"
set splitbelow
set splitright
"Make yanked content accessible in clipboard"
"set clipboard=unnamed
set shiftwidth=4
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
"Use smartcase for search
set ignorecase smartcase
"Ensure magic is on
set magic
"Use a login shell for using .bash_profile
let &shell='/bin/zsh --login'
"Set theme value"
set wildmenu
set wildmode=longest:full,full
" Show hidden symbol
" set list
