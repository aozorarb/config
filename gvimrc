set transparency=30

function! NoTransparency() abort
  set transparency=0
endfunction

function! Transparency() abort
  set transparency=30
endfunction

function! UpTransparency() abort
  set transparency+=10
endfunction

function! DownTransparency() abort
  set transparency-=10
endfunction



