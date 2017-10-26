" Change leader key
let mapleader = " "

" Bind movement on windows do ctrl
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

" Quicksave command
" noremap <C-Z> :update<CR>
" vnoremap <C-Z> <C-C>:update<CR>
" inoremap <C-Z> <C-O>:update<CR>

" Store relative line number jumps in the jumplist.
" Treat long lines as break lines (useful when moving around in them).
noremap <expr> j v:count > 1 ? 'm`' . v:count . 'j' : 'gj'
noremap <expr> k v:count > 1 ? 'm`' . v:count . 'k' : 'gk'

" Tab navigation like Firefox.
nnoremap <Leader><S-tab> :tabprevious<CR>
nnoremap <Leader><tab>   :tabnext<CR>
nnoremap <Leader>t       :tabnew<CR>

" easier moving of code blocks
vnoremap < <gv  
vnoremap > >gv  

" Toggle and Untoggle conceal usage
nnoremap <F2> :call ToggleConceal()<CR>

" Allow dictionaries
nnoremap <F5> :set spell! spelllang=en_us<CR>
nnoremap <F6> :set spell! spelllang=pt_br<CR>

"Remove all trailing whitespace
nnoremap <F7> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> <CR> :echo "Cleaned trailing whitespace" <Bar> <CR>

" Allow copying to system clipboard
set clipboard=unnamed

" Toggle Concealment
let g:isConcealToggled=0
function ToggleConceal()
    if g:isConcealToggled
        set conceallevel=2
        let g:isConcealToggled=0
    else
        set conceallevel=0
        let g:isConcealToggled=2
    endif
endfunction
