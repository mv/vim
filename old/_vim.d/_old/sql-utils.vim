
" vim:ft=vim:set foldlevel=9:

    " SQLUtilities              {{{
        " Turn it off:
        " let g:loaded_sqlutilities = 1

        " let g:sqlutil_align_where = 1
        " let g:sqlutil_align_comma = 1
        " let g:sqlutil_align_first_word = 1
        " let g:sqlutil_align_keyword_right = 1
        " let g:sqlutil_keyword_case = '\U'

        " 0: do not create maps
        " let g:sqlutil_load_default_maps = 0

        " vmap <leader>sf        <Plug>SQLU_Formatter<CR>
        " nnoremap <leader>scl       <Plug>SQLU_CreateColumnList<CR>
        " nnoremap <leader>scd       <Plug>SQLU_GetColumnDef<CR>
        " nnoremap <leader>scdt      <Plug>SQLU_GetColumnDataType<CR>
        " nnoremap <leader>scp       <Plug>SQLU_CreateProcedure<CR>
    " }}}

"2017: Plugin 'vimscripts/SQLUtilities'
    "      'vimscripts/SQLUtilities'    {{{

      let g:sqlutil_align_comma = 1
      let g:sqlutil_align_first_word = 1
      let g:sqlutil_align_keyword_right = 1
      let g:sqlutil_keyword_case = '\U'

    " }}}

"   Plugin 'vimscripts/dbext'

