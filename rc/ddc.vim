call ddc#custom#patch_global('ui', 'native')
call ddc#custom#patch_global('sources', ['around', 'buffer', 'vim-lsp'])
call ddc#custom#patch_global('sourceOptions', #{
      \ around: #{mark: 'A'},
      \ vim-lsp: #{
      \   matchers: ['matcher_head'],
      \   mark: 'lsp'
      \ },
      \ buffer: #{mark: 'B'},
      \ _: #{
      \   matchers: ['matcher_fuzzy'],
      \   sorters: ['sorter_fuzzy'],
      \   converters: ['converter_fuzzy'],
      \ },
      \ })

call ddc#custom#patch_global('filterParams', #{
      \ matcher_fuzzy: #{ splitMode: 'character' }
      \ })

call ddc#custom#patch_global('sourceParams', #{
      \ buffer: #{
      \   requireSameFiletype: v:false,
      \   limiitBytes: 5000000,
      \   fromAltBuf: v:true,
      \   forceCollect: v:true
      \ },
      \ })

call ddc#enable()
