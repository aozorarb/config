if &compatible
  set nocompatible
endif

let g:denops#deno = '/usr/local/bin/deno'
let $BASE_DIR = expand('~/.vim/rc/')
let $PLUG_DIR = expand('~/.vim/rc/plugin/')


" other rcs load at g:dein_inline_vimrcs
execute 'source $HOME/.vim/rc/dein.vim'

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
