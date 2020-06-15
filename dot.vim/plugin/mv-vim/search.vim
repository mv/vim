
" vim:ft=vim:set foldlevel=9:

    " Search:
    " =======
    "   /pattern            " search forward
    "   /\cpattern          " ignorecase for that pattern
    "   /\Cpattern          " match case for that pattern
    "   /pattern/2          " when found, put cursor 2 lines down (offset)
    "   /pattern/-1         " when found, put cursor 1 line before (offset)
    "   /pattern/e          " when found, put cursor at the end of word
    "   /pattern/e+1        " when found, put cursor 1 char after eow
    "   /pattern/e-1        " when found, put cursor 1 char before eow
    "   /pattern/b+1        " when found, put cursor 1 char after begin of word
    "   ?pattern?b+1        " same, backwards
    "
    set incsearch           " Highlight dynamically as they are typed.
    set nohlsearch          " Highlight search terms: disable on start

    set ignorecase          " search: ignore case
    set smartcase           " auto override ignorecase if search contains upper case
    set tagcase=followscs   " follow smartcasbegin of word

    set nowrapscan	    " turn off search wrapping
    "set shortmess=

    " <command><esc> to toggle hlsearch
    nnoremap <D-Esc> :set invhlsearch<CR><D-Esc>

    " <alt><esc> clear search register
    nnoremap <A-Esc> :let @/ = ""<CR>


    " Substitute:
    " ===========
    set gdefault            " /g search/replace by default
    set report=0            " report all lines changed


    " Pull word under cursor into LHS of a substitute (for quick search and
    " replace)
    nnoremap <leader>z :% s#\<<C-r>=expand("<cword>")<CR>\>#


    " Magic: 
    " =======
    "   :help magic
    "     see pattern.txt 
    "     4. Overview of pattern items
    "     9. Compare with Perl patterns
    "
    "   :help usr_27.txt
    "     Search commands and patterns
    "     
    " nnoremap / /\v
    " vnoremap / /\v
    " nnoremap ? ?\v
    " vnoremap ? ?\v

