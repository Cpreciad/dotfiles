
syntax on

set number 

set mouse=a

" ttymouse=sgr

set tabstop=4

set autoindent

filetype plugin indent on

execute pathogen#infect()

" vim mapping keys
" Copy and Paste from Clipboard
vmap <leader>xyy :!xclip -f -sel clip<CR>
map <leader>xpp mz:-lr !xclip -o -sel clip<CR>`z


" Syntastic Plugins

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_auto_loc_list=0
let g:syntastic_check_on_open=0
let g:syntastic_enable_signs=1
let g:syntastic_quiet_messages={"type":"style"}
let g:syntastic_c_compiler_options='-std=gnu99'
let g:syntastic_python_checkers = ['python3']
let g:syntastic_cpp_compiler_options='-std=c++11 -Wall'
"let g:syntastic_cpp_compiler_options = ['-std=c++11', '-Wall', '-O2']
