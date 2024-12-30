" hook_source {{{
nnoremap [TEST] <nop>
nmap <leader>T [TEST]
nnoremap [TEST]f :TestFile<CR>
nnoremap [TEST]n :TestNearrest<CR>
nnoremap [TEST]a :TestLast<CR> " test [a]gain
nnoremap [TEST]g :TestVisit<CR> " test visit(~= go)
" }}}
