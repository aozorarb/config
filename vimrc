if &compatible
  set nocompatible
endif

let g:denops#deno = '/usr/local/bin/deno'
let $VIM_DIR = expand('~/.vim')
let $HOOK_DIR = expand('$VIM_DIR/hooks')


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
