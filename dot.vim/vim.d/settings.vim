
" Settings     {{{
" ================

    " general                     {{{
    set modeline                    " modeline on

    set virtualedit=block           " allow moving past end of line in block selection mode
    set virtualedit=all             " allow moving past end of line in block selection mode

    " set timeoutlen=5000             " time in ms to complete a mapped key combination
    " set timeoutlen=2000             " Wait 2 seconds before timing out a mapping
    " set ttimeoutlen=100             " and only 100 ms before timing out on a keypress.

    " set clipboard+=unnamed          " yy, D, p: share OS clipboard
    " set clipboard-=unnamed          " NOT sharing OS clipboard
    " }}}
    " command line                {{{
    set showcmd                 " show command line
    set wildmenu                " turn on command line completion wild style
    set wildmode=list:longest   " turn on wild mode huge list
    set history=300                 " history size
    " }}}
    " search/replace              {{{
    set gdefault                    " global search/replace by default
    set incsearch                   " Highlight dynamically as they are typed.
    set nohlsearch                  " Highlight search terms: off on start
    set hlsearch                    " Highlight search terms
    set report=0                    " report all lines changed
    " }}}
    " mksession                   {{{
    set sessionoptions=blank,buffers,curdir,folds,globals,options,resize,tabpages,winsize
    "                  |     |       |      |     |       |       |      |        +-- size of windows
    "                  |     |       |      |     |       |       |      +-- tabs opened
    "                  |     |       |      |     |       |       +- size of line/columns
    "                  |     |       |      |     |       +-- options set
    "                  |     |       |      |     +-- globals set
    "                  |     |       |      +-- state of folds
    "                  |     |       +-- current dir
    "                  |     +-- hidden/unloaded buffers
    "                  +-- empty windows
    " }}}
    " viminfo                     {{{
    set viminfo='100,f1,<500,:50,@50,/50,h,%
    "           |    |  |    |   |   |   | +-- save/restore buffer list
    "           |    |  |    |   |   |   +-- disable hlsearch
    "           |    |  |    |   |   +-- search-line history
    "           |    |  |    |   +-- input-line history
    "           |    |  |    +-- command line history
    "           |    |  +-- lines saved by each register
    "           |    +-- store file marks
    "           +-- number of files for which marks are kept
    set viminfo='100,f1,<500,:50,@50,/50,h
    " }}}
    " vi compatible options       {{{
    set cpoptions=aABcefFmqs
    "             |||||||||+-- Set buffer options when entering the buffer
    "             ||||||||+-- When joining lines, leave the cursor between joined lines
    "             |||||||+-- When a new match is created (showmatch) pause for .5
    "             ||||||+-- :write command updates current file name
    "             |||||+-- :read command updates current file name
    "             ||||+-- Automatically add <CR> to the last line when using :@r
    "             |||+-- Searching continues at the end of the match at the cursor position
    "             ||+-- A backslash has no special meaning in mappings
    "             |+-- :write updates alternative file name
    "             +-- :read updates alternative file name
    set cpoptions+=#
    "              |
    "              +-- A count before "D", "o" and "O" has no effect.
    set cpoptions-=n
    "              +-- column for 'number' does not show wrapped text
    " }}}
    " vi files and working files  {{{
    scriptencoding  utf-8
    set encoding=utf-8 nobomb       " BOM often causes trouble
    set fileformats=unix,dos,mac    " support all three, in this order

    set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png,*~,*.lo
                                " ignore these list file extensions in
                                " glob()/expand()

    set noautoread                  " do not load a modified file, unless requested
    set noautowrite                 " NEVER write a file, unless requested
    set noautowriteall              " idem
    set writeany                    " write on readonly files

    set nobackup                    " [donot] make backup files
    set noswapfile                  " do not use swap files (brave mode on!)
    set directory=/tmp              " where to put swap files in
    set backupdir=/tmp              " where to put backup files
    set viewdir=/tmp                " where to put view files
    " Creating directories if they don't exist
    " silent execute '!mkdir -p $HOME/.vimbackup'
    " silent execute '!mkdir -p $HOME/.vimswap'
    " silent execute '!mkdir -p $HOME/.vimviews'

    if has('persistent_undo')
        set undofile                " keep a permanent undofile (vide :wundo/:rundo)
        set undodir=/tmp
        " if ! isdirectory(&undodir)
        "     call mkdir(&undodir, 'p')
        " endif
    endif

    " }}}

" }}}

" vim: set foldlevel=9

