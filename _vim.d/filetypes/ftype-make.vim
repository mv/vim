
" vim:ft=vim:set foldlevel=9:

" FileTypes
" =========

    " Makefile
        autocmd BufNewFile,BufRead [Mm]akefile*      setlocal filetype=make
        autocmd FileType           make              setlocal ts=8 sts=8 sw=8 noet tw=80 wrap list


