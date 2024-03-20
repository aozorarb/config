" correct inconsistency
nnoremap Y y$

" swap: j - gj, k - gk
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" change almost do not use key
noremap S $
nnoremap _ :ter<CR> 

" Command mode move
" C-h: <BS>, C-j: <CR>
cnoremap <C-k> <left>
cnoremap <C-l> <right>

" "_ is black hole register
nnoremap x "_x
vnoremap x "_x
nnoremap X "_X
vnoremap X "_X

" leader = space
let mapleader = "\<Space>"

" tab
" tab move can gt, gT
nnoremap [TABCMD] <nop>
nmap     <leader>t [TABCMD]
nnoremap <silent> [TABCMD]f :<c-u>tabfirst<CR>
nnoremap <silent> [TABCMD]l :<c-u>tablast<CR>
nnoremap <silent> [TABCMD]e :<c-u>tabedit<CR>
nnoremap <silent> [TABCMD]c :<c-u>tabclose<CR>
nnoremap <silent> [TABCMD]o :<c-u>tabonly<CR>
nnoremap <silent> [TABCMD]s :<c-u>tabs<CR>


" source .vimrc
nnoremap <leader>ss :<C-u>source $HOME/.vim/vimrc<CR>

" edit .vim's directory
nnoremap <leader>se :<C-u>e $HOME/.vim/.<CR>


" at_coder_friends
" setting solvable level for shugyo
let atCoder_solvable = ['A', 'B', 'C']
let atCoder_extension = 'rb'
nnoremap [ACFCMD] <nop>

nmap     <leader>ac [ACFCMD]
nnoremap [ACFCMD]t :! at_coder_friends test-all % <CR>
nnoremap [ACFCMD]g :! at_coder_friends check-and-go % <CR>
nnoremap [ACFCMD]s :! at_coder_friends submit % <CR>
nnoremap [ACFCMD]o :call AtCoder_open_contests(atCoder_solvable, atCoder_extension)<CR>



nnoremap <leader>h :nohl<CR>


" only macOS, clipboard copy
if has('mac')
  nnoremap <leader>p+  :<C-u>write !pbcopy<CR>
endif

" bye l mark
nnoremap ml :<C-u>marks<CR>

" insert blank line up
nnoremap <leader>O O<Esc>j
nnoremap <leader>o o<Esc>k


" commands
nnoremap <leader>cb  :call Clear_buffer()<CR>
nnoremap <leader>cbp :call Clear_buffer_and_puts_clipboard()<CR>

" make ctags
nnoremap <leader>ct  :!ctags -R .<CR>

" dvorak mode
nnoremap <leader>kq  :source $HOME/.vim/rc/keyboard/qwerty.vim<CR>
nnoremap <leader>kda :source $HOME/.vim/rc/keyboard/dvorak-mac-jis.vim<CR>
