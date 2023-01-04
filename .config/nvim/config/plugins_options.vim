
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Ultisnips files
" autocmd FileType c UltiSnipsAddFiletypes c
" autocmd FileType cpp UltiSnipsAddFiletypes cpp
" autocmd FileType py UltiSnipsAddFiletypes py python
" autocmd FileType snippets UltiSnipsAddFiletypes snippets
" autocmd FileType tex UltiSnipsAddFiletypes tex
" autocmd FileType md UltiSnipsAddFiletypes markdown

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Toggle NERDTree
nmap <F3> :NERDTreeToggle <CR>
" <bar> wincmd p <CR>

" Toggle tagbar
" let Tlist_Use_Right_Window   = 1
" nmap <F4> :TlistToggle<CR>
nmap <F4> :TagbarToggle<CR>
" autocmd! BufWritePost * :TlistUpdate
" let g:easytags_suppress_report = 1

nmap <F8> :GundoToggle<CR>
" Vim-airline opitions
set laststatus=2
let g:airline_powerline_fonts = 2
" let g:airline_theme='solarized'
" let g:airline_solarized_bg='dark'
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_theme='papercolor'
set t_Co=256

" polyglot options
" let g:polyglot_disabled = ['latex']

" Force tex to be latex and set linewidth
let g:tex_flavor = "latex"
autocmd FileType tex :set tw=79

" Localvimrc options
let g:localvimrc_ask=0
let g:localvimrc_sandbox=0

" Vim-template options
let g:email="lucas.campos@tngtech.com"
let g:username="Lucas Costa Campos"

" Vim-comment options
autocmd FileType cmake setlocal commentstring=#\ %s

" Toggle rainbow parenthesis
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces

" let g:rbpt_colorpairs = [
"     \ ['darkred',     'DarkOrchid3'],
"     \ ['darkcyan',    'RoyalBlue3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['brown',       'RoyalBlue3'],
"     \ ['red',         'firebrick3'],
"     \ ['Darkblue',    'SeaGreen3'],
"     \ ['darkcyan',    'SeaGreen3'],
"     \ ['Darkblue',    'firebrick3'],
"     \ ['gray',        'RoyalBlue3'],
"     \ ['brown',       'firebrick3'],
"     \ ['darkgreen',   'RoyalBlue3'],
"     \ ['darkgray',    'DarkOrchid3'],
"     \ ['darkred',     'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['darkgreen',   'firebrick3'],
"     \ ]
