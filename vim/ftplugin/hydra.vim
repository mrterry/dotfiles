set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set foldmethod=indent
let python_highlight_all = 1

let b:hydra_version="hydra.new"
map <buffer> <Leader>r :w<CR>:!rm hydrg*<CR>:execute "!" . b:hydra_version . " %" <CR>
