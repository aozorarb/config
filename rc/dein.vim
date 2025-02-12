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

if !dein#min#load_state(s:dein_base)
  finish
endif
let g:dein#enable_notification = v:true

let s:cd = expand('<sfile>')->fnamemodify(':h')
let g:dein#inline_vimrcs = [
      \ s:cd . '/map.vim',
      \ s:cd . '/norm.vim',
      \ s:cd . '/function.vim',
      \ s:cd . '/netrw.vim',
      \ s:cd . '/auto.vim',
      \ ]
execute 'set runtimepath+=' . s:dein_dir

call dein#begin(s:dein_base)

call dein#add(s:dein_dir)

let s:toml_dir= expand('$VIM_DIR/tomls/')

call dein#load_toml(s:toml_dir . '/dein.toml', #{ lazy: 0 })
call dein#load_toml(s:toml_dir . '/dein-lazy.toml', #{ lazy: 1 })
call dein#load_toml(s:toml_dir . '/ddc.toml', #{ lazy: 1 })
call dein#load_toml(s:toml_dir . '/ddu.toml', #{ lazy: 1 })

call dein#recache_runtimepath()
call dein#end()
call dein#save_state()

if bufname('%') !=# ''
  filetype detect
endif

 " plugin remove check
 if len(dein#check_clean()) > 0
     call map(dein#check_clean(), "delete(v:val, 'rf')")
     call dein#recache_runtimepath()
 endif
 
 if dein#check_install()
   call dein#install()
 endif
