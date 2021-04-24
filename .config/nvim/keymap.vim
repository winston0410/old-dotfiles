"iMap as to esc
imap ;; <Esc>
"Use space as leader
nnoremap <SPACE> <Nop>
let mapleader=" "

"Copy into clipboard buffer
nnoremap <leader>y "+y
"Paste from clipboard buffer
nnoremap <leader>p "+p
nnoremap <leader>P "+P
"Remap Y to y$
nnoremap Y <NOP>
nnoremap Y y$
"Make s and S noop for using vim sandwich
nnoremap S <NOP>
nnoremap s <NOP>
"Redo with r
"noremap r :redo <CR>
"noremap <C-R> <NOP>
"Undo with <C-U>
nnoremap <C-U> <undo>
nnoremap u <NOP>
"Keymap config for splitting panes"
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>
"Load new nvim config"
nnoremap <silent> <leader>q :source $MYVIMRC <BAR> :echo "Config updated"<CR>

"tab control"
nnoremap tn :tabnew 
nnoremap tc :tabclose <CR>
"Disable mappings 
"gitgutter
let g:gitgutter_map_keys = 0
"nerdcommenter
