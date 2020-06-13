
" vim:ft=vim:set foldlevel=9:

" Plugins
" ======


  Plug 'chrisbra/csv.vim'
  let g:csv_delim = ','
  let g:csv_delim_test = ';|'
  let g:csv_start = 1
  let g:csv_end = 100

  let g:csv_no_conceal = 1
  let g:csv_hiGroup = 'Folded'
  let g:csv_highlight_column = 'y'
  let g:csv_hiHeader = 'MatchParen'

  let g:csv_comment = '#'

  let g:airline#extensions#csv#column_display = 'Name' 

