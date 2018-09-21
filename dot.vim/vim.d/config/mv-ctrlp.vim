
" vim:ft=vim:set foldlevel=9:

    " Python matcher for CtrlP
    Plug 'FelikZ/ctrlp-py-matcher'

    " CtrlP
    Plug 'ctrlpvim/ctrlp.vim'

    " 1: disable plugin
    " let g:loaded_ctrlp = 1

    let g:ctrlp_map = ''        " keep original vim mapping untouched
    let g:ctrlp_cmd = 'CtrlP'

  " 'f' is for 'fuzzy finding'
    map <leader>fr :CtrlPRoot<CR>
    map <leader>f. :CtrlP ../
    map <leader>ff :CtrlPCurFile<CR>
    map <leader>fw :CtrlPCurWD<CR>
    map <leader>fb :CtrlPBuffer<CR>
    map <leader>fm :CtrlPMRU<CR>
    map <leader>fcc :CtrlPClearCache<CR>
    map <leader>fca :CtrlPClearAllCaches<CR>

"   map <leader>cp :CtrlPRoot<CR>
"   map <leader>c. :CtrlP ../
"   map <leader>cf :CtrlPCurFile<CR>
"   map <leader>cw :CtrlPCurWD<CR>
"   map <leader>cm :CtrlPMRU<CR>
"   map <leader>cb :CtrlPBuffer<CR>
"   map <leader>cc :CtrlPClearCache<CR>
"   map <leader>ca :CtrlPClearAllCaches<CR>

    " default:
    " let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'
    let g:ctrlp_match_window = 'top,order:ttb,min:5,max:20,results:100'

    " CtrlP root dir
    let g:ctrlp_working_path_mode = 'ra'

    " Do not jump to file if open in another place
    let g:ctrlp_switch_buffer = 0

    " 0: search by pathname
    " 1: search by filename
    " Can be toggled on/off by pressing <c-d> inside the prompt.
    let g:ctrlp_by_filename = 0

    " 0: search by filename
    " 1: set default: search by regexp
    " Can be toggled on/off by pressing <c-r> inside the prompt.
    let g:ctrlp_regexp = 0


    let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
    let g:ctrlp_match_current_file = 1
    let g:ctrlp_use_caching = 1

