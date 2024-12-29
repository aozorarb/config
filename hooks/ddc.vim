" *ui*
" *sources*
" *source_options*
" *source_params*
" *filter_params*
" *denippet*

" ui
call ddc#custom#patch_global('ui', 'native')

" sources
call ddc#custom#patch_global('sources', [
      \ 'ctags', 'around', 'buffer',
      \ 'lsp', 'denippet'
\ ])

" source_options
call ddc#custom#patch_global('sourceOptions', #{
    \ _: #{
    \   matchers: ['matcher_fuzzy'],
    \   sorters: ['sorter_fuzzy'],
    \   converters: [
    \     'converter_fuzzy',
    \     'converter_remove_overlap',
    \     'converter_truncate'
    \   ],
    \   minAutoCompleteLength: 2,
    \ },
    \ around:  #{ mark: 'A' },
    \ buffer:  #{ mark: 'B' },
    \ ctags:   #{ mark: 'C' },
    \ lsp:     #{ mark: 'lsp'},
    \ denippet:#{ mark: 'denippet'},
\ })


" source_params
call ddc#custom#patch_global('sourceParams', #{
    \ _: #{ maxItems: 20},
    \ buffer: #{
    \   requireSameFiletype: v:false,
    \   fromAltBuf: v:true,
    \   forceCollect: v:true
    \ },
    \ ctags: #{ executable: '/usr/local/bin/ctags' },
\ })

" filter_params
call ddc#custom#patch_global('filterParams', #{
      \ matcher_fuzzy: #{ splitMode: 'word' }
\ })

" denippet
let denippet_paths = "~/.vim/rc/plugin/denippet/*.*"
for file in glob(denippet_paths, 1, 1)
  call denippet#load(file)
endfor
call ddc#enable()
