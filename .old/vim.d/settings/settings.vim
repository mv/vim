
" vim:ft=vim:set foldlevel=9:

" ferreira.mv[ at ]gmail.com
"     file layout based on http://vi-improved.org/vimrc.php

" Settings
" ========

    set modeline                    " modeline on: Executes 'vim:' fle directives

    " Files:
    set fileformats=unix,dos,mac    " support all three, in this order
    set noautoread                  " do not load a modified file, unless requested
    set autowrite                   " write to file when changing buffers
    set autowriteall                " write to file when leaving Vim
    set writeany                    " write on readonly files
    set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png,*~,*.lo
                                    " ignore these list file extensions in glob()/expand()


    " Command Line Completion:
    set wildmenu                    " turn on command line completion wild style
    set wildmode=list:longest       " command line complete using wildmenu
    set history=300                 " history size


    " Copy_Paste:
    set clipboard=                  " DO-NOT share OS clipboard: must literal C-C/C-V
    "et clipboard+=unnamed          " share OS clipboard: yy, D, p


    " Backup:
"   set nobackup                    " [donot] make backup files
    set backup
    set backupdir=~/tmp             " where to put backup files

    " SwapFile:
"   set noswapfile                  " do not use swap files (brave mode on!)
    set swapfile
    set directory=~/tmp             " where to put swap files in
    set updatetime=2000             " write to swapfile after 'n' milliseconds
    set updatecount=50              " write to swapfile after 'n' typed characters

    " Creating directories if they don't exist
"   silent execute '!mkdir -p $HOME/.vim/tmp'
    silent execute '!mkdir -p $HOME/tmp'

    " Undo:
     if has('persistent_undo')
         set undofile                " keep a permanent undofile (vide :wundo/:rundo)
"        set undodir=~/.vim/tmp
         set undodir=~/tmp
     endif

    " ViewOptions:
    "     what is saved using mkview  (current window only) {{{
    "     mkview/loadview"
    set sessionoptions=cursor,folds,options,slash,unix
    "                  |      |     |       |     +-- force unix EOL
    "                  |      |     |       +-- replace backslashes in file names
    "                  |      |     +-- local window options and mappings
    "                  |      +-- all defined foldings
    "                  +-- cursor position
"2017:     set viewdir=/tmp                " where to put view files
    " }}}

    " Sessionoptions:
    "     what is saved using mksession (all windows) {{{
    "et sessionoptions=blank,buffers,curdir,folds,globals,options,resize,tabpages,winsize
    "                  |     |       |      |     |       |       |      |        +-- size of windows
    "                  |     |       |      |     |       |       |      +-- tabs opened
    "                  |     |       |      |     |       |       +- size of line/columns
    "                  |     |       |      |     |       +-- options set
    "                  |     |       |      |     +-- globals set
    "                  |     |       |      +-- state of folds
    "                  |     |       +-- current dir
    "                  |     +-- hidden/unloaded buffers
    "                  +-- empty windows
    set sessionoptions=resize    " size of line/columns
    set sessionoptions+=buffers  " hidden/unloaded buffers
    set sessionoptions+=curdir   " current dir
    set sessionoptions+=folds    " state of folds
    set sessionoptions+=tabpages " tabs opened
    set sessionoptions+=winsize  " size of windows
    " }}}

    " Viminfo:
    "     what is saved using wviminfo {{{
    "     wviminfo/rviminfo
    set viminfo='100,f1,<500,:50,@50,/50,h,%
    "           |    |  |    |   |   |   | +-- save/restore buffer list
    "           |    |  |    |   |   |   +-- disable hlsearch
    "           |    |  |    |   |   +-- search-line history
    "           |    |  |    |   +-- input-line history
    "           |    |  |    +-- command line history
    "           |    |  +-- lines saved by each register
    "           |    +-- store file marks
    "           +-- number of files for which marks are kept
"   set viminfo='100,f1,<500,:50,@50,/50,h
    " }}}


