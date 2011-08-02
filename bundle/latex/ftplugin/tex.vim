set grepprg=grep\ -nH\ $*
set formatoptions=l
set lbr

set tabstop=4
set shiftwidth=4

" default latex flavor is latex, as opposed to plain tex or something else
"let g:tex_flavor = "latex"
let g:tex_flavor = "pdflatex"


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

let g:Tex_UseEditorSettingInDVIViewer = 1

let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode --src-specials $*'
let g:Tex_ViewRule_pdf = 'okular'
"let g:Tex_ViewRuleComplete_pdf = 'okular'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf'

let g:Tex_Env_frame = "\\begin{frame}\<CR>\\frametitle{<++>}\<CR><++>\<CR>\\end{frame}<++>"
call IMAP('ENF', "\\begin{frame}\<CR>\\frametitle{<++>}\<CR><++>\<CR>\\end{frame}<++>",'tex')

