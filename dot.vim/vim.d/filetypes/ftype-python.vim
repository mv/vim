
" vim:ft=vim:set foldlevel=9:

" Python

    autocmd BufNewFile,BufRead *.py  setlocal filetype=python

    autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType python setlocal textwidth=79 nowrap
    autocmd FileType python setlocal autoindent list foldmethod=indent

"   autocmd BufWritePost python      call Flake8()


