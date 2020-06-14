
" vim:ft=vim:set foldlevel=9:

" Folding
" =======
"
    set foldenable              " Turn on folding
    set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds
    set foldlevel=9             " Don't autofold anything (but I can still fold manually)
    set foldmethod=syntax

"   set foldmethod=marker       " Fold on specific marker
"   set foldmarker={,}          " Markers to use.

    " Enable folding with the spacebar
    nnoremap <space> za

    " Fold HTML tags
    nnoremap <leader>ft Vatzf


    """
    """ Text line of a closed folding
    """
    set foldtext=SimpleFoldText()
    function! SimpleFoldText()
        return getline(v:foldstart).' {{{'
    endfunction


