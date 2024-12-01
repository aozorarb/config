" *ui*
" *sources*
" *source_options*
" *source_params*
" *filter_params*

" ui
call ddc#custom#patch_global('ui', 'native')

" sources
call ddc#custom#patch_global('sources', [
      \ 'ctags', 'around', 'buffer',
      \ 'lsp', 'mocword'
\ ])

" source_options
call ddc#custom#patch_global('sourceOptions', #{
      \ _: #{
      \   matchers: ['matcher_fuzzy'],
      \   sorters: ['sorter_fuzzy'],
      \   converters: [
      \     'converter_fuzzy',
      \     'converter_remove_overlap'
      \   ],
      \   minAutoCompleteLength: 2,
      \ },
      \ around:  #{ mark: 'A' },
      \ buffer:  #{ mark: 'B' },
      \ ctags:   #{ mark: 'C' },
      \ lsp: #{ mark: 'lsp'},
      \ mocword: #{mark: 'moc', isVolatile: v:true, maxItems: 5},
\ })


" source_params
call ddc#custom#patch_global('sourceParams', #{
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

call ddc#enable()
