let s:cd = expand('<sfile>')->fnamemodify(':h')

for file in readdir(s:cd . '/denippet')
  if file[0] is# '.'
    continue
  endif

  call denippet#load(s:cd . '/denippet/' . file)
endfor

