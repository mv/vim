
" vim:ft=vim:set foldlevel=9:

    " Search:
    " =======
    set nohlsearch          " Highlight search terms: disable on start
    set incsearch           " Highlight dynamically as they are typed.

    set ignorecase          " search: ignore case
    set smartcase           " auto override ignorecase if search contains upper case
    set tagcase=followscs   " follow smartcase. Default: followic

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


    " making vim regex act like Perl Regex
    " See http://stevelosh.com/blog/2010/09/coming-home-to-vim
    nnoremap / /\v
    vnoremap / /\v
    nnoremap ? ?\v
    vnoremap ? ?\v



