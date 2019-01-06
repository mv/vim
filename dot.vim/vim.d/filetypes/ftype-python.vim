
" vim:ft=vim:set foldlevel=9:

" Python

    autocmd BufNewFile,BufRead *.py  setlocal filetype=python

    autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType python setlocal textwidth=79 nowrap
    autocmd FileType python setlocal autoindent list foldmethod=indent

"   autocmd BufWritePost python      call Flake8()

"   let g:syntastic_python_checkers = ['pylint', 'python']
"   let g:syntastic_python_pylint_args = "--my --args --here"

    " http://flake8.pycqa.org/en/latest/user/options.html
    let g:syntastic_python_checkers = ['flake8']
    let g:syntastic_python_flake8_args = "--ignore W391"

