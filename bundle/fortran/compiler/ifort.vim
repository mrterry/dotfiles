"let current_compiler = "ifort"
"setlocal errorformat=%E%.%#rror:\ %f\\,\ line\ %l:\ %m,\%-C%.%#,\%-Z\%p^
"set efm=%E%.%#rror:\ %f\\,\ line\ %l:\ %m,\%-C%.%#,\%-Z\%p^
"let isf="@,48-57,/,.,-,_,+,#,^,,$,%,~,="

if exists("current_compiler")
  finish
endif
let current_compiler = "ifort"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif


CompilerSet errorformat=%E%.%#rror:\ %f\\,\ line\ %l:\ %m,\%-C%.%#,\%-Z\%p^ 


