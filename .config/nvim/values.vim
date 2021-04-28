set encoding=UTF-8
set termguicolors
"Wrap code without breaking word boundary
set wrap
set linebreak
"Highlight current line
set cursorline
"Disable file backup
set nobackup
set nowritebackup
"Increase the height of command
set cmdheight=2
"Add absolute line number"
set number
"Set default direction for splitting panes"
set splitbelow
set splitright
"Make yanked content accessible in clipboard"
"set clipboard=unnamed
set shiftwidth=2
set autoindent
set cindent
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
"Lens.vim"
let g:lens#disabled_filetypes = ['nerdtree']
let g:lens#width_resize_min = 50

let g:lightline = {
  \ 'colorscheme': 'edge',
  \ }
