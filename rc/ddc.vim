" *ui*
" *sources*
" *source_options*
" *source_params*
" *filter_params*

let g:copilog_no_maps = v:true

" ui
call ddc#custom#patch_global('ui', 'native')

" sources
call ddc#custom#patch_global('sources', [
      \ 'around', 'buffer', 'vim-lsp', 'copilot',
      \  'line', 'ctags', 'shell-native', 'cmdline'])

" source_options
call ddc#custom#patch_global('sourceOptions', #{
      \ _: #{
      \   matchers: ['matcher_fuzzy'],
      \   sorters: ['sorter_fuzzy'],
      \   converters: ['converter_fuzzy'],
      \ },
      \ around: #{ mark: 'A' },
      \ buffer: #{ mark: 'B' },
      \ vim-lsp: #{ mark: 'lsp' },
      \ copilot: #{
      \   mark: 'copilot',
      \   matchers: [],
      \   minAutoCompleteLength: 0,
      \ },
      \ line: #{ mark: 'line' },
      \ ctags: #{ mark: 'ctag' },
      \ shell-native: #{ mark: 'zsh' },
      \ cmdline: #{ mark: 'cmdline' },
      \ })

" source_params
call ddc#custom#patch_global('sourceParams', #{
      \ buffer: #{
      \   requireSameFiletype: v:false,
      \   limiitBytes: 5000000,
      \   fromAltBuf: v:true,
      \   forceCollect: v:true
      \ },
      \ line: #{ maxSize: 1000 },
      \ shell-native: #{ shell: 'zsh' },
      \ })

" filter_params
call ddc#custom#patch_global('filterParams', #{
      \ matcher_fuzzy: #{ splitMode: 'character' }
      \ })

call ddc#enable()
