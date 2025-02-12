set fileencodings=utf-8
set history=200

set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab

set ruler
set scrolloff=3
set nrformats-=ocatal
set cursorline
set hidden
set smartindent
set incsearch
set wildmenu
set backspace=indent,eol,start
set showmatch
set tags+=./tags;
set autowrite
set secure
packadd! matchit
packadd! termdebug

if has('termguicolors')
  set termguicolors
endif

" for ruby-mini-test
set completefunc=syntaxcomplete#Complete


filetype plugin indent on

if has('persistent_undo') " undoがファイルを閉じても繋がるように
	set undodir=~/.config/vim_undo
 set undofile
endif

