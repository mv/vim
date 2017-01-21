
" FileTypes
" =========

    " ctags                     {{{
        autocmd BufRead     ?tags  setlocal filetype=tags
        autocmd FileType    tags   setlocal ts=8 sts=0 sw=8 noet nosta list
    " }}}

" vim: set foldlevel=9


