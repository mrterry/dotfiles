set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

" word wrap, but don't insert newlines
set textwidth=79
set wrapmargin=0
set lbr
set wrap

" navigation is visual, rather than line based
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk
