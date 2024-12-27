if &compatible
  set nocompatible
endif

let g:denops#deno = '/usr/local/bin/deno'


execute 'source $HOME/.vim/rc/map.vim'
execute 'source $HOME/.vim/rc/norm.vim'
execute 'source $HOME/.vim/rc/dein.vim'
execute 'source $HOME/.vim/rc/netrw.vim'
execute 'source $HOME/.vim/rc/auto.vim'

for file in glob("~/.vim/rc/plugin/*.*", 1, 1)
  execute 'source' . file
endfor

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
