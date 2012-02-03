
" Folding 
" ================
"
    set foldenable              " Turn on folding
    set foldmethod=marker       " Fold on specific marker
    set foldmarker={,}          " Markers to use.
    set foldlevel=100           " Don't autofold anything (but I can still fold manually)
    set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds

    set foldtext=SimpleFoldText() " Custom fold text function (cleaner than default)
    function! SimpleFoldText()
        return getline(v:foldstart).' '
    endfunction

    " Fold HTML tags
    nnoremap <leader>ft Vatzf

" vim: set foldlevel=9

