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

