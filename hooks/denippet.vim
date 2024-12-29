inoremap <C-l> <Plug>(denippet-expand)
inoremap <expr> <Tab> denippet#jumpable() ? '<Plug>(denippet-jump-next)' : '<Tab>'
snoremap <expr> <Tab> denippet#jumpable() ? '<Plug>(denippet-jump-next)' : '<Tab>'
inoremap <expr> <S-Tab> denippet#jumpable(-1) ? '<Plug>(denippet-jump-prev)' : '<S-Tab>'
snoremap <expr> <S-Tab> denippet#jumpable(-1) ? '<Plug>(denippet-jump-prev)' : '<S-Tab>'

let s:cd = expand('<sfile>')->fnamemodify(':h')

for file in readdir(s:cd . '/denippet')
  if file[0] is# '.'
    continue
  endif

  call denippet#load(s:cd . '/denippet/' . file)
endfor

