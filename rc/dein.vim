let $CACHE = expand('~/.chache')
if !isdirectory($CACHE)
  call mkdir($CACHE, 'p')
endif

let s:dein_dir = $CACHE . '/dein/repos/github.com/Shougo/dein.vim'
if &runtimepath !~# '/dein.vim'
  " let s:dein_dir = fnamemodify('dein.vim', ':p')
    if !isdirectory(s:dein_dir)
        execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
    endif
execute 'set runtimepath^=' . substitute(
    \ fnamemodify(s:dein_dir, ':p') , '[/\\]$', '', '')
endif


"-- dein.vim config --
let s:dein_base = '~/.cache/dein/'
execute 'set runtimepath+=' . s:dein_dir

call dein#begin(s:dein_base)

call dein#add(s:dein_dir)


" dein#load_toml for each ~/.vim/dein_tomls/*
for file in readdir(expand('~/.vim/dein_tomls/'))
  if file[0] is# '.'
    continue
  end
  call dein#load_toml('~/.vim/dein_tomls/' . file)
endfor


call dein#end()

" plugin remove check
if len(dein#check_clean()) > 0
    call map(dein#check_clean(), "delete(v:val, 'rf')")
    call dein#recache_runtimepath()
endif

if dein#check_install()
  call dein#install()
endif



