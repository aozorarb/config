" *filetype*
" *autocmds*

" *filetype*
au BufRead *.m      setf mercury " not matlab
au BufRead *.out    setf bin
au BufRead todo,todo.md,TODO setf todo

" *autocmds*
" binary
" ruby
" vim
" arm_asm


" target: *.out binary
" effect: use xxd command for binary file
" augroup Binary
"   au BufReadPre   *.out let &bin=1
"   au BufReadPost  *.out if &bin | %!xxd
"   au BufReadPost  *.out set ft=xxd | endif
"   au BufWritePre  *.out if &bin | %!xxd -r
"   au BufWritePre  *.out endif
"   au BufWritePost *.out if &bin | %!xxd
"   au BufWritePost *.out set nomod | endif
" augroup END


" target: *.rb ruby
" effect: use 2 space indent 
" augroup Ruby
"   au FileType ruby  {
"     set shiftwidth=2
"     set tabstop=2
"   }
" augroup END

" augroup Vim
"   au FileType vim {
"     set shiftwidth=2
"     set tabstop=2
"   }
" augroup END

" target: *.s asm arm_asm
" effect: set filetype=arm
augroup ArmAsm
  au FileType asm {
    set filetype=arm
  }
augroup END
