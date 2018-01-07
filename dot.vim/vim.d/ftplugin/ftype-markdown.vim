
" vim:ft=vim:set foldlevel=9:

" FileTypes
" =========

    " Mardown                   {{{

    autocmd BufRead     *.{md,mkd,markdown}  setlocal filetype=markdown
    autocmd FileType    markdown             setlocal ts=4 sts=4 sw=4 et nolist
    autocmd FileType    markdown             setlocal wrap conceallevel=0

    " }}}


