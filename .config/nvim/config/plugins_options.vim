" Neomake options
let g:neomake_cpp_enable_markers=['clang']
let g:neomake_cpp_clang_args = ["-std=c++14", "-Wextra", "-Wall", "-fsanitize=undefined","-g", "-I", "inc"]
let g:neomake_cpp_clangcheck_args = ["-std=c++14", "-Wextra", "-Wall", "-fsanitize=undefined","-g", "-I", "inc"]
autocmd! BufWritePost * Neomake

"YouCompleteMeOptions
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Ultisnips files
autocmd FileType c UltiSnipsAddFiletypes c
autocmd FileType cpp UltiSnipsAddFiletypes cpp
autocmd FileType py UltiSnipsAddFiletypes py python
autocmd FileType snippets UltiSnipsAddFiletypes snippets
autocmd FileType tex UltiSnipsAddFiletypes tex
autocmd FileType md UltiSnipsAddFiletypes markdown

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Toggle NERDTree
nmap <F3> :NERDTreeToggle <CR> 
" <bar> wincmd p <CR>

" Toggle tagbar
let Tlist_Use_Right_Window   = 1
nmap <F4> :TlistToggle<CR>
autocmd! BufWritePost * :TlistUpdate
let g:easytags_suppress_report = 1

" Vim-airline opitions
set laststatus=2
let g:airline_powerline_fonts = 2
" let g:airline#extensions#tabline#enabled = 1

" polyglot options
let g:polyglot_disabled = ['latex']

" Force tex to be latex and set linewidth
let g:tex_flavor = "latex"
autocmd FileType tex :set tw=79

" Localvimrc options
let g:localvimrc_ask=0
let g:localvimrc_sandbox=0

" Vim-template options
let g:email="rmk236@gmail.com"
let g:username="Lucas Costa Campos"
