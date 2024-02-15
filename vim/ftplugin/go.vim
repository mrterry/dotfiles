map <buffer> <Leader>r :w<CR>:!go run % <CR>

set tabstop=2
set shiftwidth=2
set softtabstop=2

set commentstring=//%s

set autowrite

" Go syntax highlighting

" Auto formatting and importing

" Status line types/signatures

" Run :GoBuild or :GoTestCompile based on the go file

" Map keys for most used commands.
" Ex: `\b` for building, `\r` for running and `\b` for running test.
autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
