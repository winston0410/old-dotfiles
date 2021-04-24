Plug 'easymotion/vim-easymotion'

"Remap easymotion-prefix to prevent conflict"
map <Leader> <Plug>(easymotion-prefix)
nmap <Leader><Leader> <Plug>(easymotion-overwin-w)
let g:EasyMotion_do_mapping = 0
