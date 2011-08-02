" do not use vi compatible mode
set nocompatible

" highlights all patterns matching search
set hlsearch
set incsearch

" show line/column number
set ruler
" show the title in window
set title
" open files relative to directory of currently open file
set autochdir

" keep at least 5 lines below cursor
set scrolloff=5

" enable filetype checking, plugins and indention
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

" enable pathogen
source ~/vim/bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

" saves and switches to next file for editing
map B :w<CR>:bnext<CR>
" map m to next error in quickfix
map m :cn<CR>zv
" map M to previous error in quickfix
map M :cp<CR>zv

map ,h <C-W>h
map ,l <C-W>l
map ,j <C-W>j
map ,k <C-W>k

" map t to block comment
"map t <Plug>Comment
"map T <Plug>DeComment

"set wildmenu
set wildmode=longest:full

let g:EnhCommentifyBindInInsert = 'N'

autocmd BufRead,BufNewFile *.cmake,CMakeLists.txt,*.cmake.in runtime! indent/cmake.vim
autocmd BufRead,BufNewFile *.cmake,CMakeLists.txt,*.cmake.in setf cmake
autocmd BufRead,BufNewFile *.ctest,*.ctest.in setf cmake

autocmd BufRead,BufNewFile bucky.inp setf namelist
autocmd BufRead,BufNewFile *.nml setf namelist

autocmd BufRead,BufNewFile *.scss setf scss
autocmd BufRead,BufNewFile *.sass setf sass

autocmd BufRead,BufNewFile *.hydra setf hydra

autocmd BufRead,BufNewFile *.dak setf dakota

" use set ft=ft to override defaults
" use setf ft if only executing when no default found
autocmd BufRead,BufNewFile *.i set ft=yorick

" change colorscheme for vimdiff
set t_Co=256
syntax enable
colo wargrey
if &diff
	colorscheme shobogenzo
endif
au FilterWritePost * if &diff | set bg=dark | colorscheme shobogenzo | else | colorscheme wargrey | endif
au BufWinLeave * colorscheme wargrey

" fold with \f, update folds with \F
map <Leader>f za
map <Leader>F zx

" Toggle line numbers with <F2>
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
" Build when with <F4>
nnoremap <F4> :make<CR>
" generate ctags info with <F12> 
map <F12> :!ctags -R --c++-kinds=+p --fields=+aiS --extra=+q .<CR>

map , @0

set foldlevelstart=1
set backspace=indent,eol,start
