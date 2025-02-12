" hook_source {{{
nnoremap <leader>u <cmd>call ddu#start({})<CR>
nnoremap <leader>r <cmd>DduRg<CR>


call ddu#custom#patch_global(#{
    \   ui: 'ff',
    \   sources: [
    \     #{name: 'buffer'},
    \     #{name: 'register'},
    \     #{name: 'file_rec'},
    \     #{name: 'line'},
    \   ],
    \   sourceOptions: #{
    \     _: #{
    \       matchers: ['matcher_substring'],
    \     },
    \   },
    \   sourceParams: #{
    \     rg: #{
    \       args: ['--json'],
    \     },
    \   },
    \   kindOptions: #{
    \     file: #{
    \       defaultAction: 'open',
    \     },
    \   }
    \ })


autocmd FileType ddu-ff call s:ddu_my_settings()
function! s:ddu_my_settings() abort
  nnoremap <buffer><silent> <CR>
        \ <Cmd>call ddu#ui#do_action('itemAction')<CR>
  nnoremap <buffer><silent> o
        \ <Cmd>call ddu#ui#do_action('preview')<CR>
  nnoremap <buffer><silent> <Space>
        \ <Cmd>call ddu#ui#do_action('toggleSelectItem')<CR>
  nnoremap <buffer><silent> /
        \ <Cmd>call ddu#ui#do_action('openFilterWindow')<CR>
  nnoremap <buffer><silent> q
        \ <Cmd>call ddu#ui#do_action('quit')<CR>
endfunction


autocmd User Ddu:uiDone ++nested
      \ call ddu#ui#async_action('openFilterWindow')
" }}}

