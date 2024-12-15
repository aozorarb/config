vim9script

# index
# *vim*
# *plugin*

# *vim*

# correct inconsistency
nnoremap Y y$

# swap: j - gj, k - gk
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

# change almost do not use key
noremap S $
nnoremap _ :ter<CR> 

# Command mode move
# C-h: <BS>, C-j: <CR>
cnoremap <C-k> <left>
cnoremap <C-l> <right>

# "_ is black hole register
nnoremap x "_x
vnoremap x "_x
nnoremap X "_X
vnoremap X "_X

inoremap <C-@> <Esc> 

# leader = space
g:mapleader = "\<Space>"

# tab
# tab move can gt, gT
nnoremap [TABCMD] <nop>
nmap     <leader>t [TABCMD]
nnoremap <silent> [TABCMD]f :<c-u>tabfirst<CR>
nnoremap <silent> [TABCMD]l :<c-u>tablast<CR>
nnoremap <silent> [TABCMD]e :<c-u>tabedit<CR>
nnoremap <silent> [TABCMD]c :<c-u>tabclose<CR>
nnoremap <silent> [TABCMD]o :<c-u>tabonly<CR>
nnoremap <silent> [TABCMD]s :<c-u>tabs<CR>

# source .vimrc
nnoremap <leader>ss :<C-u>source $HOME/.vim/vimrc<CR>

# edit .vim's directory
nnoremap <leader>se :call Edit_vimrc()<CR>




nnoremap <leader>h :nohl<CR>


# only macOS, clipboard copy
if has('mac')
  nnoremap <leader>p+  :<C-u>write !pbcopy<CR>
endif

# bye l mark
nnoremap ml :<C-u>marks<CR>

# insert blank line up
nnoremap <leader>O O<Esc>j
nnoremap <leader>o o<Esc>k


# commands
nnoremap <leader>cb  :call Clear_buffer()<CR>
nnoremap <leader>cbp :call Clear_buffer_and_puts_clipboard()<CR>

# make ctags
nnoremap <leader>ct  :!ctags -R .<CR>

# enter method for mac jis keyboard to ansi
inoremap <C-x>' `
inoremap <C-x>- ~


# *plugin*

# at_coder_friends
nnoremap [ACFCMD] <nop>

nmap     <leader>ac [ACFCMD]
nnoremap [ACFCMD]t :! at_coder_friends test-all % <CR>
nnoremap [ACFCMD]g :! at_coder_friends check-and-go % <CR>
nnoremap [ACFCMD]s :! at_coder_friends submit % <CR>

# easymotion
map <Leader> <Plug>(easymotion-prefix)

# denippet
inoremap <C-l> <Plug>(denippet-expand)
inoremap <expr> <Tab> denippet#jumpable() ? '<Plug>(denippet-jump-next)' : '<Tab>'
snoremap <expr> <Tab> denippet#jumpable() ? '<Plug>(denippet-jump-next)' : '<Tab>'
inoremap <expr> <S-Tab> denippet#jumpable(-1) ? '<Plug>(denippet-jump-prev)' : '<S-Tab>'
snoremap <expr> <S-Tab> denippet#jumpable(-1) ? '<Plug>(denippet-jump-prev)' : '<S-Tab>'

# git
nnoremap <leader>gi :Git<Esc>
