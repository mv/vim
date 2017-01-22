
" vim:ft=vim:set foldlevel=9:

    " Python matcher for CtrlP
    Plugin 'FelikZ/ctrlp-py-matcher'

    " CtrlP
    Plugin 'ctrlpvim/ctrlp.vim'

    " 1: disable plugin
    " let g:loaded_ctrlp = 1


    let g:ctrlp_map = ''
    let g:ctrlp_cmd = 'CtrlP'

    let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

    map <leader>cp :CtrlP<CR>
    map <leader>cb :CtrlPBuffer<CR>
    map <leader>cf :CtrlPCurFile<CR>
    map <leader>cr :CtrlPRoot<CR>
    map <leader>cc :CtrlPClearCache<CR>
    map <leader>cca :CtrlPClearAllCaches<CR>

    " 'r' - the nearest ancestor of the current file that contains
    "       one of these directories or files: .git .hg .svn .bzr _darcs
    " 'a' - the directory of the current file, unless it is a subdirectory
    "       of the cwd
    " 'c' - the directory of the current file.
    " 'w' - modifier to "r": start search from the cwd instead of the
    "       current file's directory
    " 0 or '' (empty string) - disable this feature.
    let g:ctrlp_working_path_mode = 'ra'

    " 0: search by pathname
    " 1: search by filename
    " Can be toggled on/off by pressing <c-d> inside the prompt.
    let g:ctrlp_by_filename = 0

    " 0: search by filename
    " 1: set default: search by regexp
    " Can be toggled on/off by pressing <c-r> inside the prompt.
    let g:ctrlp_regexp = 0

    " The position: (default: bottom)
    "   top - show the match window at the top of the screen.
    "   bottom - show the match window at the bottom of the screen.
    " The listing order of results: (default: btt)
    "   order:ttb - from top to bottom.
    "   order:btt - from bottom to top.
    " The minimum and maximum heights:
    "   min:{n} - show minimum {n} lines (default: 1).
    "   max:{n} - show maximum {n} lines (default: 10).
    " The maximum number of results:
    "   results:{n} - list maximum {n} results (default: sync with max height).
    "                 0 mean no-limit.
    " default
    let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'
    let g:ctrlp_match_window = 'top,order:ttb,min:5,max:20'


