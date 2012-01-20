set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

" autocmd FileType python compiler pylint
let g:pylint_onwrite = 0
compiler pylint

" Execute current buffer with python
map <buffer> <Leader>r :w<CR>:!/usr/bin/env python % <CR>

" Use fancy third party python syntax file
let python_highlight_all = 1
set syntax=python
set foldmethod=indent

set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

let g:pyflakes_use_quickfix = 0

let g:ipy_perform_mappings = 0
map <leader>d :py get_doc_buffer()<CR>
map <leader>s :py run_this_line()<CR>
map <leader>S :py run_this_file()<CR>
vmap <leader>s :py run_these_lines()<CR>

map <leader>u :py update_subchannel_msgs()<CR>
command! -nargs=0 IPStatus :py update_subchannel_msgs(); echo("vim-ipython shell updated",'Operator')<CR>
python reselect=True
