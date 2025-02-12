" ruby {{{
setlocal iskeyword+=!
setlocal iskeyword+=?
" }}}

" vim {{{
setlocal iskeyword+=:,#
setlocal indentkeys+=\\,endif,endfunction,endfor,endwhile,endtry
" }}}

" todo {{{
nnoremap <buffer>T :ToggleTask<CR>
nnoremap <buffer>C :CreateTask<CR>A
inoremap <buffer><C-c> <cmd>CreateTask<CR>
nnoremap <buffer>gC :CreateTask<CR>
nnoremap <buffer><leader>a :ArchiveTasks<CR>
" }}}
