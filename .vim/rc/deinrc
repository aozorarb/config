"--ここからdein.vim installation --

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
set nocompatible
let s:dein_base = '~/.cache/dein/'
execute 'set runtimepath+=' . s:dein_dir

call dein#begin(s:dein_base)

call dein#add(s:dein_dir)
call dein#load_toml('~/.vim/dein.toml', {'lazy': 0})
call dein#load_toml('~/.vim/dein_lazy.toml', {'lazy': 1})

call dein#end()

filetype indent plugin on
if has('syntax')
  syntax on
endif

" plugin remove check
if len(dein#check_clean()) > 0
    call map(dein#check_clean(), "delete(v:val, 'rf')")
    call dein#recache_runtimepath()
endif
" Uncomment if you want to install not-installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
