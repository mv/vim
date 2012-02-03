
" Coding Rules
" ============

    " Matching Brackets
    set showmatch           " show matching brackets
    set matchtime=5         " ms blinking showmatch

    " Case
    set ignorecase          " case insensitive
    set infercase           " if there are caps adjust auto-completion
    set smartcase           " if there are caps go insensitive

    " TabStops
    set tabstop=4           " real tabs will show 8 spaces
    set softtabstop=4       " how many spaces in a tabstop
    set shiftwidth=4        " sw: indent size
    set expandtab           " no tabs - space in place of tabstops
    set smarttab            " sta: space in place of tabs in a new line
    " vim:set ts=4 sts=4 sw=4 et   sta   nolist - spaces
    " vim:set ts=8 sts=0 sw=8 noet nosta list   - tabs

    " Indent
    set autoindent          " ai: pre-req for si
    set copyindent          " ci: copy same character used in previous indent line
    set smartindent         " si: on
    set shiftround          " round indent to shiftwidth

    " VimGrep
    set grepprg=ack
    set grepformat=%f:%l:%m


" }}}

" vim: set foldlevel=9

