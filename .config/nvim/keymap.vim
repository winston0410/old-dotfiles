"iMap as to esc
imap ;; <Esc>
vmap ;; <Esc>
"smap ;; <Esc>
"Use space as leader
nnoremap <SPACE> <Nop>
let mapleader=" "

"Copy into clipboard buffer
nnoremap <leader>y "+y
vnoremap <leader>y "+y
"snoremap <leader>y "+y
"xnoremap <leader>y "+y
"Paste from clipboard buffer
nnoremap <leader>p "+p
vnoremap <leader>p "+p
"snoremap <leader>p "+p
"xnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>P "+P
"snoremap <leader>P "+P
"xnoremap <leader>P "+P
"Remap Y to y$
nnoremap Y <NOP>
nnoremap Y y$
"Make s and S noop for using vim sandwich
nnoremap S <NOP>
nnoremap s <NOP>
"Remain in normal mode with o and O
nnoremap o o<Esc>
nnoremap O O<Esc>
"Change after open to indent cursor position
nnoremap oi o<Esc>cc
nnoremap Oi O<Esc>cc
"Redo with r
"noremap r :redo <CR>
"noremap <C-R> <NOP>
"Undo with <C-U>
"nnoremap <C-U> <undo>
"nnoremap u <NOP>
"Paste in visual mode without copying
vnoremap p pgvy
vnoremap P Pgvy
"Keymap config for splitting panes"
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>
"Load new nvim config"
nnoremap <silent> <leader>q :luafile $MYVIMRC<CR> 

"tab control"
nnoremap tn :tabnew 
nnoremap tc :tabclose <CR>

"Ex-mode
cnoremap <expr> <c-n> wildmenumode() ? "\<c-n>" : "\<down>"
cnoremap <expr> <c-p> wildmenumode() ? "\<c-p>" : "\<up>"
