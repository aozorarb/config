call ddc#custom#patch_global('ui', 'pum')
call ddc#custom#patch_global('sources', ['around'])
call ddc#custom#patch_global('sourceOptions', #{
      \ around: #{mark: 'A'},
      \ _: #{
      \   matchers: ['matcher_head', 'matcher_fuzzy'],
      \   sorters: ['sorter_rank', 'sorter_fuzzy'],
      \   converters: ['converter_fuzzy'] },
      \ })

call ddc#custom#patch_global('filterParams', #{
      \ matcher_fuzzy: #{ splitMode: 'character' }
      \ })

call ddc#enable()

