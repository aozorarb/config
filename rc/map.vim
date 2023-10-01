" buffer
nnoremap <silent> [b :bprev<CR>
nnoremap <silent> ]b :bnext<CR>

" swap
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" command
xnoremap <C-a> <Home>
" "_ is black hole register
nnoremap x "_x
nnoremap X "_D

" leader = space
let mapleader = "\<Space>"
nnoremap <silent><Leader>o   :<C-u>put =repeat(nr2char(10), v:count1)<CR>
nnoremap <silent><Leader>O   :<C-u>put! =repeat(nr2char(10), v:count1)<CR>
nnoremap <silent><Leader>q   :<C-u>exit<CR>
nnoremap <silent><Leader>w   :<C-u>write<CR>

" tab
nnoremap [TABCMD] <nop>
nmap     <leader>t [TABCMD]
nnoremap <silent> [t        :<C-u>tabnext<CR>
nnoremap <silent> ]t        :<C-u>tabprevious<CR>
nnoremap <silent> [TABCMD]f :<c-u>tabfirst<CR>
nnoremap <silent> [TABCMD]l :<c-u>tablast<CR>
nnoremap <silent> [TABCMD]N :<c-u>tabNext<CR>
nnoremap <silent> [TABCMD]e :<c-u>tabedit<CR>
nnoremap <silent> [TABCMD]c :<c-u>tabclose<CR>
nnoremap <silent> [TABCMD]o :<c-u>tabonly<CR>
nnoremap <silent> [TABCMD]s :<c-u>tabs<CR>

" at_coder_friends
" setting solvable level for shugyo

let atCoder_solvable = ['A', 'B', 'C']
let atCoder_extension = 'rb'
nnoremap [ACFCMD] <nop>
nmap     <leader>acf [ACFCMD]
nnoremap [ACFCMD]t :! at_coder_friends test-all % <CR>
nnoremap [ACFCMD]g :! at_coder_friends check-and-go % <CR>
nnoremap [ACFCMD]s :! at_coder_friends submit % <CR>
nnoremap [ACFCMD]o :call AtCoder_open_contests(atCoder_solvable, atCoder_extension)<CR>

" Escでhlsearch切り替え
nnoremap <silent> <Esc><Esc> :nohlsearch<CR>

" only macOS, clipboard copy
nnoremap <Space>p+  :<C-u>write !pbcopy<CR>

" mark from https://saihoooooooo.hatenablog.com/entry/2013/04/30/001908
nnoremap [Mark] <Nop>
nmap <leader>m [Mark]
nnoremap ]m ]`
nnoremap [m [`
nnoremap [Mark]l :<C-u>marks<CR>
