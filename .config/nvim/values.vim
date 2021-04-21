set encoding=UTF-8
"Add absolute line number"
set number
"Set default direction for splitting panes"
set splitbelow
set splitright
"Make yanked content accessible in clipboard"
"set clipboard=unnamed
set shiftwidth=2
set autoindent
set smartindent
set tabstop=2
set signcolumn=yes
"values for vim gitgutter"
let g:gitgutter_grep=''
let g:gitgutter_sign_added = ''
let g:gitgutter_sign_modified = ''
let g:gitgutter_sign_removed = ''
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_removed_above_and_below = ''
let g:gitgutter_sign_modified_removed = ''
"For better performance"
set lazyredraw
"nerdtree-git-plugin"
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
"Use a login shell for using .bash_profile
let &shell='/bin/zsh --login'
"Set theme value"
let g:onedark_hide_endofbuffer=1
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }
let g:onedark_termcolors=256
"Lens.vim"
let g:lens#disabled_filetypes = ['nerdtree']
let g:lens#width_resize_min = 50
