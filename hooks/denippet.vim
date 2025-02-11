" hook_source {{{
inoremap <C-l> <Plug>(denippet-expand)
inoremap <expr> <leader><Tab> denippet#jumpable() ? '<Plug>(denippet-jump-next)' : '<Tab>'
snoremap <expr> <leader><Tab> denippet#jumpable() ? '<Plug>(denippet-jump-next)' : '<Tab>'
inoremap <expr> <leader><S-Tab> denippet#jumpable(-1) ? '<Plug>(denippet-jump-prev)' : '<S-Tab>'
snoremap <expr> <leader><S-Tab> denippet#jumpable(-1) ? '<Plug>(denippet-jump-prev)' : '<S-Tab>'

let s:dir = expand('~/.vim/hooks/denippet/')
for file in readdir(s:dir)
  if file[0] is# '.'
    continue
  endif
  call denippet#load(s:dir . file)
endfor
" }}}
