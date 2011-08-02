set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

" autocmd FileType python compiler pylint
let g:pylint_onwrite = 0
compiler pylint

" Execute current buffer with python
map <buffer> <F5> :w<CR>:!/usr/bin/env python % <CR>
map <buffer> <Leader>r :w<CR>:!/usr/bin/env python % <CR>

" Use fancy third party python syntax file
let python_highlight_all = 1
set syntax=python
