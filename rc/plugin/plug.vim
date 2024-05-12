let g:memolist_path = "$HOME/diary/memo"

" at_coder_friends
function! AtCoder_open_contests(contests, ext) abort
  for cont in a:contests
    let filepath = expand('%:p:h') . "/" . cont . "." . a:ext
    if filewritable(filepath)
      execute(":e " . filepath)
    else
      echo "Not exisit file: " . filepath
    endif
  endfor
endfunction


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
