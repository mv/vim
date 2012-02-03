" Text Rules
" ==========

    " Case:
    " =====
    set ignorecase          " case insensitive:
    set infercase           " if there are caps adjust auto-completion
    set smartcase           " if there are caps go insensitive

    " TabStops:
    " =========
    set tabstop=4           " real tabs will show 8 spaces
    set softtabstop=4       " how many spaces in a tabstop
    set shiftwidth=4        " sw: indent size
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

    " Search:
    " =======
    set nohlsearch          " Highlight search terms: off on start
    set incsearch           " Highlight dynamically as they are typed.
    set gdefault            " global search/replace by default
    set report=0            " report all lines changed

    " Line Breaks:
    " ============
    set linebreak                   " when wrapping, uses chars listed in breakt
    set breakat=\ ^I!@*-+;:,./?     " when wrapping, break at these characters
    set showbreak=…                 " what to show at the start of a wrapped line
    set iskeyword+=48-57,192-255
    set iskeyword+=_,$,@,%,#        " none of these are word dividers

    " Matching Brackets:
    " ==================
    set showmatch           " show matching brackets
    set matchtime=5         " ms blinking showmatch

    " Wrapping Text:
    " ==============
    set backspace=indent,eol,start  " make backspace a more flexible
    set textwidth=78                " tw
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
    set listchars=tab:▸\ ,trail:·,eol:¬,extends:>,precedes:<
    "             |       |       |     |         +-- line befor left margin: <
    "             |       |       |     +-- line beyond right margin: >
    "             |       |       +-- EOF: _
    "             |       +-- trailing spaces: ....
    "             +-- each tab: >----
    "
    " Char  CTRL-V+u    i+CTRL-V+digit
    " ¬       ac        U+00AC          not
    " ▸     25b8        U+25B8          black right triangle
    "

    " Automatic Formating:
    " ===================
    "     default: tcq vide 'help fo-table'
    "     to use: 'gq'
    set formatoptions=cqrn
    "                 ||||
    "                 |||+-- recognize numbered lists
    "                 ||+--- insert comment leader after <Enter> in Insert mode
    "                 |+---- allow formatting using gq
    "                 +----- auto-wrap comments
    "et formatoptions=rq

    " VimGrep:
    " ========
    set grepprg=ack
    set grepformat=%f:%l:%m

    " C-A/C-X: increment/decrement
    " ============================
    set nrformats=alpha,octal,hex

    " Moving:
    " -------
    set nostartofline       " keep cursor in same column when moving up/down

" vim: set foldlevel=9

