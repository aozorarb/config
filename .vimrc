function s:init()
	set fileencodings=utf-8,cp932
	set tabstop=4
	set shiftwidth=4
	set number
   	set cursorline
	syntax enable
	set hidden
	nnoremap <silent> <C-j> :bprev<CR>
	nnoremap <silent> <C-k> :bnext<CR>
	set smartindent
	set laststatus=2
	set is
	set wildmenu
	set backspace=indent,eol,start
	set showmatch
	source $VIMRUNTIME/macros/matchit.vim " [%]を拡張
	nnoremap <silent> <Esc><Esc> :nohlsearch<CR> " Escでhlsearch切り替え
	imap jj <Esc>
	set termguicolors
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	let &t_Cs = "\e[4:3m"
	let &t_Ce = "\e[4:0m"
	if has('persistent_undo') " undoをファイルを閉じても繋がるように
		set undodir=~/.vim/undo
		set undofile
	endif
endfunction

function s:dein_begin()
	"----------ここからdein.vim--
	set runtimepath+=$HOME/.vim/bundles/repos/github.com/Shougo/dein.vim
	call dein#begin('$HOME/.vim/bundles/')
	" dein#add たち
	" Let dein manage dein
	call dein#add('~/.vim/bundles/repos/github.com/Shougo/dein.vim')
	call dein#load_toml('~/.vim/dein.toml', {'lazy': 0})
	call dein#load_toml('~/.vim/dein_lazy.toml', {'lazy': 1})
endfunction

function s:dein_end()
	call dein#end()
	if dein#check_install()
	  call dein#install()
	endif
	"plugins setting
	set helplang=en
endfunction

function s:ddc()
	call ddc#custom#patch_global('sources', ['around'])
	call ddc#custom#patch_global('sources', ['omni'])
	call ddc#custom#patch_global('sourceOptions', {
		\ '_': {
		\		'matchers': ['matcher_head'],
		\ },
		\ 'omni': {'mark': 'O'}
		\ })
	" omni func
	call ddc#enable()
endfunction



function s:plugins_setting()
	" write plugins setting
	" ohree/yajs.vim
	autocmd BufRead,BufNewFile *.es4 setfiletype javascript
	" lightline.vim
	set showmode
	set showcmd
	set ruler
	colorscheme iceberg
endfunction

function s:play() "まとめ関数
	call s:init() "タグの設定とか
	call s:dein_begin() "deinによるプラグイン管理とプラグインの設定
	call s:plugins_setting()
	call s:dein_end() "deinのインストールとかaddの後に書くやつ
	"call s:ddu() "UI
	call s:ddc() "補完プラグイン
endfunction

call s:play()
