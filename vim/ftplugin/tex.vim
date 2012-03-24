set grepprg=grep\ -nH\ $*
set formatoptions=l
set lbr

set tabstop=4
set shiftwidth=4

" default latex flavor is latex, as opposed to plain tex or something else
"let g:tex_flavor = "latex"
"let g:tex_flavor = "pdflatex"


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

"let g:Tex_UseEditorSettingInDVIViewer = 1

"let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode --src-specials $*'
let g:Tex_MultipleCompileFormats = 'pdf'
"let g:Tex_ViewRule_pdf='Preview'

let g:Tex_DefaultTargetFormat = 'pdf'
 
let g:Tex_CompileRule_dvi = 'latex --interaction=nonstopmode $*'
let g:Tex_CompileRule_ps = 'dvips -Pwww -o $*.ps $*.dvi'
let g:Tex_CompileRule_pspdf = 'ps2pdf $*.ps'
let g:Tex_CompileRule_dvipdf = 'dvipdfm $*.dvi'
let g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 --interaction=nonstopmode $*'
 
let g:Tex_ViewRule_dvi = 'texniscope'
let g:Tex_ViewRule_ps = 'Preview'
let g:Tex_ViewRule_pdf = 'Skim'
 
let g:Tex_FormatDependency_ps  = 'dvi,ps'
let g:Tex_FormatDependency_pspdf = 'dvi,ps,pspdf'
let g:Tex_FormatDependency_dvipdf = 'dvi,dvipdf'

let g:Tex_Env_frame = "\\begin{frame}\<CR>\\frametitle{<++>}\<CR><++>\<CR>\\end{frame}<++>"
call IMAP('ENF', "\\begin{frame}\<CR>\\frametitle{<++>}\<CR><++>\<CR>\\end{frame}<++>",'tex')

set wrap
if &diff | set wrap | endif
au FilterWritePost * if &diff | set wrap | endif
