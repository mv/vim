
" Folding
" ================
"
    set foldenable              " Turn on folding
    set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds
    set foldlevel=9             " Don't autofold anything (but I can still fold manually)

    " Fold by syntax
    nnoremap <leader>fs :set foldmethod=syntax<CR>
    nnoremap <leader>fm :set foldmethod=marker foldmarker={,}<CR>

    """
    """ Text line of a closed folding
    """
    set foldtext=SimpleFoldText()
    function! SimpleFoldText()
        return getline(v:foldstart).' {{{'
    endfunction

    " Fold HTML tags
    nnoremap <leader>ft Vatzf

    " <space> toggles folds opened and closed
    " nnoremap <space> za
    " <space> in visual mode creates a fold over the marked range
    " vnoremap <space> zf

    " Tip: fold toggle: za
    nnoremap <leader>f0 :set foldlevel=0<CR>
    nnoremap <leader>f1 :set foldlevel=1<CR>
    nnoremap <leader>f2 :set foldlevel=2<CR>
    nnoremap <leader>f3 :set foldlevel=3<CR>
    nnoremap <leader>f4 :set foldlevel=4<CR>
    nnoremap <leader>f5 :set foldlevel=5<CR>
    nnoremap <leader>f6 :set foldlevel=6<CR>
    nnoremap <leader>f7 :set foldlevel=7<CR>
    nnoremap <leader>f8 :set foldlevel=8<CR>
    nnoremap <leader>f9 :set foldlevel=9<CR>


" vim: set foldlevel=9

