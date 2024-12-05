vim9script

augroup filetype
  au BufRead *.m set ft=mercury # not matlab
augroup END


# target: *.out binary
# effect: use xxd command for binary file
augroup Binary
  au BufReadPre   *.out let &bin=1
  au BufReadPost  *.out if &bin | %!xxd
  au BufReadPost  *.out set ft=xxd | endif
  au BufWritePre  *.out if &bin | %!xxd -r
  au BufWritePre  *.out endif
  au BufWritePost *.out if &bin | %!xxd
  au BufWritePost *.out set nomod | endif
augroup END


# target: *.rb ruby
# effect: use 2 space indent 
augroup Ruby
  au BufReadPost *.rb {
    set shiftwidth=2
    set tabstop=2
  }
augroup END

augroup Vim
  au BufReadPost *.vim {
    set shiftwidth=2
    set tabstop=2
  }
augroup END
