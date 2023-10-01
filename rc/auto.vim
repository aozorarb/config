" target: *.out
" effect: use xxd command for binary file
augroup Binary
  au BufReadPre   *.out let &bin=1
  au BufReadPost  *.out if &bin | %!xxd
  au BufReadPost  *.out set ft=xxd | endif
  au BufWritePre  *.out if &bin | %!xxd -r
  au BufWritePre  *.out endif
  au BufWritePost *.out if &bin | %!xxd
  au BufWritePost *.out set nomod | endif
augroup END

" target: *.gd
" effect: use hardtab for GDScript
augroup GDScript
  au BufReadPre *.gd set noexpandtab
  au BufReadPre *.gd set noexpandtab
augroup END

