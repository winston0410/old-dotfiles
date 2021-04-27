"Plug 'preservim/nerdtree' | 
  "\ Plug 'Xuyuanp/nerdtree-git-plugin'
let NERDTreeShowHidden=1
let g:NERDTreeWinPos = "left"
let NERDTreeMinimalUI=1

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

function RefreshNERDTree()
    if g:NERDTree.IsOpen()
        :NERDTreeRefreshRoot
        :NERDTreeCWD
    endif
endfunction

function NERDTreeToggleAndRefresh()
  :NERDTreeToggle
  :call RefreshNERDTree()
endfunction

"Key binding"
nnoremap <silent> <leader><Bslash> :call NERDTreeToggleAndRefresh()<CR> 

augroup DIRCHANGE
    au!
    autocmd DirChanged tabpage silent :call RefreshNERDTree()
augroup END
