let s:extfname = expand("%:e")
if s:extfname ==? "f"
   let fortran_fixed_source=1
   unlet! fortran_free_source
elseif s:extfname ==? "f77"
   let fortran_fixed_source=1
   unlet! fortran_free_source
else
   let fortran_free_source=1
   let fortran_fixed_source=0
   unlet! fortran_fixed_source
   set expandtab
   set tabstop=4
   set shiftwidth=4
   set softtabstop=4
endif

"let fortran_more_precise=1
let fortran_fold=1
let fortran_fold_conditionals=1
set foldmethod=syntax

" Assume using intel compiler
"compiler gfortran
compiler ifort
