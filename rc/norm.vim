set fileencodings=utf-8,cp932
set number
set history=200
set tabstop=2
set shiftwidth=2
set ruler
set scrolloff=3
set nrformats-=ocatal
set cursorline
set hidden
set expandtab
set virtualedit+=block
set smartindent
set is
set wildmenu
set backspace=indent,eol,start
set showmatch
packadd! matchit
" 24bitのtrue colorが使えないやつではコメントアウト
set termguicolors
if has('persistent_undo') " undoをファイルを閉じても繋がるように
	set undodir=/~/.config/vim_undo
	set undofile
endif
