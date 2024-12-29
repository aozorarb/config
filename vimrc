if &compatible
  set nocompatible
endif

let g:denops#deno = '/usr/local/bin/deno'
let $BASE_DIR = expand('~/.vim/rc/plugin')


execute 'source $HOME/.vim/rc/function.vim'
execute 'source $HOME/.vim/rc/map.vim'
execute 'source $HOME/.vim/rc/norm.vim'
execute 'source $HOME/.vim/rc/dein.vim'
execute 'source $HOME/.vim/rc/netrw.vim'
execute 'source $HOME/.vim/rc/auto.vim'


" lightline.vim
set laststatus=2
set background=dark

" if iceberg is disable, use builtin 'slate'
try
  colorscheme iceberg
catch 
  colorscheme slate
  echo 'Iceberg cannot be used'
endtry

syntax enable
set number
