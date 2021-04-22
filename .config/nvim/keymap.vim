"iMap as to esc
imap ;; <Esc>
"Use space as leader
nnoremap <SPACE> <Nop>
let mapleader=" "
"Keymap for launching NerdTree"
nnoremap <silent> <leader><Bslash> :NERDTreeToggle <CR> 
nnoremap <D-K> <NOP>
"Keymap config for splitting panes"
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>
"Load new nvim config"
nnoremap <silent> <leader>q :source $MYVIMRC <BAR> :echo "Config updated"<CR>
"Remap easymotion-prefix to prevent conflict"
map <Leader> <Plug>(easymotion-prefix)
nmap <Leader><Leader> <Plug>(easymotion-overwin-w)

"Toggle terminal"
nnoremap <silent> <leader>t :ToggleTabTerminal<CR>
tnoremap <silent> <leader>t <C-\><C-n>:ToggleTabTerminal<CR>
"Comment out code"
nmap <leader>/ <plug>NERDCommenterToggle<CR>
"tab control"
nnoremap tn :tabnew 
nnoremap tc :tabclose <CR>
"Disable mappings 
"gitgutter
let g:gitgutter_map_keys = 0
"nerdcommenter
let g:NERDCreateDefaultMappings = 0
"easy-motion
let g:EasyMotion_do_mapping = 0