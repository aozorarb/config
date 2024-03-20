if &compatible
  set nocompatible
endif

execute 'source $HOME/.vim/rc/map.vim'
execute 'source $HOME/.vim/rc/skk.vim'
execute 'source $HOME/.vim/rc/norm.vim'
execute 'source $HOME/.vim/rc/netrw.vim'
execute 'source $HOME/.vim/rc/dein.vim'
execute 'source $HOME/.vim/rc/plug.vim'
execute 'source $HOME/.vim/rc/auto.vim'
execute 'source $HOME/.vim/rc/ddc.vim'
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
