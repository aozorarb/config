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
"ruby << RUBY
"  toml_files = Dir.glob(File.expand_path('~/.vim/dein_tomls/*'))
"  toml_files.each do |file|
"    Vim.command("call dein#load_toml('#{file}')")
"  end
"RUBY
let toml_files = glob(expand('~/.vim/dein_tomls/*'))
for file in toml_files
    execute 'call dein#load_toml("' . file . '")'
endfor

call dein#end()

" plugin remove check
if len(dein#check_clean()) > 0
    call map(dein#check_clean(), "delete(v:val, 'rf')")
    call dein#recache_runtimepath()
endif
" Uncomment if you want to install not-installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

let rc_files = glob(expand('~/.vim/rc/plugin/*'))
for file in rc_files
    execute 'source "' . file . '"'
endfor
