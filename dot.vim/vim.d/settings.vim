
" ferreira.mv[ at ]gmail.com
"     file layout based on http://vi-improved.org/vimrc.php

" Settings
" ========

    set modeline                    " modeline on: Executes 'vim:' fle directives

    " Files:
    set fileformats=unix,dos,mac    " support all three, in this order
    set noautoread                  " do not load a modified file, unless requested
    set noautowrite                 " NEVER write a file, unless requested
    set noautowriteall              " idem
    set writeany                    " write on readonly files
    set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png,*~,*.lo
                                    " ignore these list file extensions in glob()/expand()
    " Command Line Completion:
"   set wildmenu                    " turn on command line completion wild style
"   set wildmode=list:full          " command line complete using wildmenu
    set wildmode=list:longest       " command line complete
    set history=300                 " history size

    " Copy_Paste:
    set clipboard=                  " DO-NOT share OS clipboard: must literal C-C/C-V
    "et clipboard+=unnamed          " share OS clipboard: yy, D, p

   " Encoding:
    scriptencoding  utf-8
    set encoding=utf-8 nobomb       " BOM often causes trouble

    " Backup:
    set nobackup                    " [donot] make backup files
    set backupdir=/tmp              " where to put backup files

    " SwapFile:
    set noswapfile                  " do not use swap files (brave mode on!)
    set directory=/tmp              " where to put swap files in
    " Creating directories if they don't exist
    " silent execute '!mkdir -p $HOME/.vimbackup'
    " silent execute '!mkdir -p $HOME/.vimswap'
    " silent execute '!mkdir -p $HOME/.vimviews'

    " Undo:
    if has('persistent_undo')
        set undofile                " keep a permanent undofile (vide :wundo/:rundo)
        set undodir=/tmp
    endif

    " ViewOptions:
    "     what is saved using mkview {{{
    set sessionoptions=cursor,folds,options,slash,unix
    "                  |      |     |       |     +-- force unix EOL
    "                  |      |     |       +-- replace backslashes in file names
    "                  |      |     +-- local window options and mappings
    "                  |      +-- all defined foldings
    "                  +-- cursor position
    set viewdir=/tmp                " where to put view files
    " }}}

    " Sessionoptions:
    "     what is saved using mksession {{{
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

    " Viminfo:
    "     what is saved using wviminfo/rviminfo {{{
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

" vim: set foldlevel=9
