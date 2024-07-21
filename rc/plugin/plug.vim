" clear all buffer
function! Clear_buffer() abort
  if &modifiable
    %d
  endif
endfunction


" clear all buffer and puts "*
function! Clear_buffer_and_puts_clipboard() abort
  if &modifiable
    call Clear_buffer()
    norm "*p
  endif
endfunction
