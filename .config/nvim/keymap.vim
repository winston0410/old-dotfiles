"iMap as to esc
imap ;; <Esc>
vmap ;; <Esc>
smap ;; <Esc>
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
"Remain in normal mode with o and O
nnoremap o o<Esc>
nnoremap O O<Esc>
"Redo with r
"noremap r :redo <CR>
"noremap <C-R> <NOP>
"Undo with <C-U>
"nnoremap <C-U> <undo>
"nnoremap u <NOP>
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

"Ex-mode
cnoremap <expr> <c-n> wildmenumode() ? "\<c-n>" : "\<down>"
cnoremap <expr> <c-p> wildmenumode() ? "\<c-p>" : "\<up>"
