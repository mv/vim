
" vim:ft=vim:set foldlevel=9:

" Text Rules
" ==========

   " Encoding:
   " =========
    scriptencoding  utf-8
    set encoding=utf-8      " nobomb       " BOM often causes trouble


    " Case:
    " =====
    set ignorecase          " case insensitive:
    set infercase           " if there are caps adjust auto-completion


    " TabStops:
    " =========
    set tabstop=2           " real tabs will show 8 spaces
    set softtabstop=2       " how many spaces in a tabstop
    set shiftwidth=2        " sw: indent size
    set expandtab           " no tabs - space in place of tabstops
    set smarttab            " sta: space in place of tabs in a new line
                            " modelines:
                            " vim:set ts=4 sts=4 sw=4 et   sta   nolist - spaces
                            " vim:set ts=8 sts=0 sw=8 noet nosta list   - tabs

    " Indent:
    " =======
    set autoindent          " ai: pre-req for si
    set smartindent         " si: on
    set copyindent          " ci: copy same character used in previous indent line
    set shiftround          " round indent to shiftwidth


    " Line Breaks:
    " ============
    set linebreak                   " when wrapping, uses chars listed in breakt
    set breakat=\ ^I!@*-+;:,./?     " when wrapping, break at these characters
    set showbreak=_                 " what to show at the start of a wrapped line
"   set showbreak=…                 " look at ~/.gvimrc
    set iskeyword+=48-57,192-255
    set iskeyword+=_,$,@,%,#        " none of these are word dividers


    " Wrapping Text:
    " ==============
    set backspace=indent,eol,start  " make backspace a more flexible
    set textwidth=80                " tw
    set nowrap sidescroll=1         " [no] wrap long lines
    "et whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
    "             | | | | | | | | |
    "             | | | | | | | | +-- "]" Insert and Replace
    "             | | | | | | | +-- "[" Insert and Replace
    "             | | | | | | +-- "~" Normal
    "             | | | | | +-- <Right> Normal and Visual
    "             | | | | +-- <Left> Normal and Visual
    "             | | | +-- "l" Normal and Visual (not recommended)
    "             | | +-- "h" Normal and Visual (not recommended)
    "             | +-- <Space> Normal and Visual
    "             +-- <BS> Normal and Visual


    " Visible Characters:
    " ===================
    "     list/invlist/nolist
    set nolist                      " [no]list invisible chars
    set listchars=tab:>\ ,trail:.,eol:_,extends:>,precedes:<
    "             |       |       |     |         +-- line befor left margin: <
    "             |       |       |     +-- line beyond right margin: >
    "             |       |       +-- EOF: _
    "             |       +-- trailing spaces: ....
    "             +-- each tab: >----
    "
    " Char  CTRL-V+u    i+CTRL-V+digit
    " ¬       ac        U+00AC          not
    " ▸     25b8
    "
    " set listchars=tab:▸\ ,trail:·,eol:¬,extends:>,precedes:<
    " also: look at ~/.gvimrc
    "

    " Invisible character colors
    highlight NonText    guifg=#4a4a59
    highlight SpecialKey guifg=#4a4a59



    " VimGrep:
    " ========
    set grepprg=ack
    set grepformat=%f:%l:%m


    " Vimdiff
    " ========
    if &diff
        set list            " ON: list chars
        set hlsearch        " ON: highlight search"
    endif


    " C-A/C-X: increment/decrement
    " ============================
    set nrformats-=octal    " ignore numbers start with '00' for <C-A> <C-X>


    " Moving:
    " =======
    set nostartofline       " keep cursor in same column when moving up/down


    " Automatic Formating:
    " ===================
    " default: tcq    (vide 'help fo-table')
    " default: vt     (when using empty .vimrc)
    " default: croql  (Most of ft plugins default to 'setlocal fo=croql')

    " autocmd BufRead,BufReadPost,FileType *
    "       \ set      formatoptions=qrc
    "                                |||
    "                                ||+--- auto-wrap comments
    "                                |+---- insert comment leader after <Enter>
    "                                +----- allow formatting using gq
    "et formatoptions=cqno
    "                 |||+-- insert comment leader when using 'o' or 'O'
    "                 ||+--- recognize numbered lists
    "                 |+---- allow formatting using gq
    "                 +----- auto-wrap comments
    "et formatoptions=qrcn
    "                 |||+-- recognize numbered lists
    "                 ||+--- auto-wrap comments
    "                 |+---- insert comment leader after <Enter>
    "                 +----- allow formatting using gq
    "
    set formatoptions+=qrj
    "                  ||+--- remove comment leader when joining lines
    "                  |+---- insert comment leader after <Enter>
    "                  +----- allow formatting using gq




    " StripWhiteSpace:
    " ================
    autocmd BufWritePre * :silent! call Preserve("%s/\\s\\+$//e")

        " Preserve: {{{
        "     Ref http://vimcasts.org/episodes/tidying-whitespace/"
        function! Preserve(command)
            " preparation: save last search, and cursor position.
            let _s=@/
            let l = line(".")
            let c = col(".")
            " do the business:
            execute a:command
            " clean up: restore previous search history, and cursor position
            let @/=_s
            call cursor(l, c)
        endfunction
        "}}}


