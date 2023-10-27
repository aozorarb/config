set fileencodings=utf-8,cp932
set tabstop=2
set shiftwidth=2
set number
set cursorline
set hidden
set expandtab
set virtualedit+=block
set smartindent
set is
set wildmenu
set backspace=indent,eol,start
set showmatch
source $VIMRUNTIME/macros/matchit.vim " [%]を拡張

" 24bitのtrue colorが使えないやつではコメントアウト
set termguicolors
if has('persistent_undo') " undoをファイルを閉じても繋がるように
	set undodir=/~/.config/vim_undo
	set undofile
endif
" auto supply marks from: https://saihoooooooo.hatenablog.com/entry/2013/04/30/001908
if !exists('g:markrement_char')
    let g:markrement_char = [
    \     'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
    \     'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'
    \ ]
endif
nnoremap <silent>[Mark]m :<C-u>call <SID>AutoMarkrement()<CR>
function! s:AutoMarkrement()
    if !exists('b:markrement_pos')
        let b:markrement_pos = 0
    else
        let b:markrement_pos = (b:markrement_pos + 1) % len(g:markrement_char)
    endif
    execute 'mark' g:markrement_char[b:markrement_pos]
    echo 'marked' g:markrement_char[b:markrement_pos]
endfunction
