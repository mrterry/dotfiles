set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

set cindent

set commentstring=//%s
map <buffer> <Leader>r :w<CR>:!yorick -i % <CR>
