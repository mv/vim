
" vim:ft=vim:set foldlevel=9:

" Python matcher for CtrlP
" Plug 'FelikZ/ctrlp-py-matcher'
"     let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" CtrlP
Plug 'ctrlpvim/ctrlp.vim'

  " 1: disable plugin
  " let g:loaded_ctrlp = 1
  "
  let g:ctrlp_open_new_file = 'v'          " default: vsplit
  let g:ctrlp_open_multiple_files = '3vr'  " mark: open 3, vsplit, hide rest
  let g:ctrlp_max_files = 1000	           " protection against ~/
  let g:ctrlp_max_depth = 10               " protection against ~/
  let g:ctrlp_mruf_max = 100
  let g:ctrlp_brief_prompt = 1             " <bs> on empty prompt exit CtrlP.
" let g:ctrlp_arg_map = 0                  " <c-o>/<c-y> + extra key

" let g:ctrlp_user_command = 'gfind %s -type f -print0 | gsort -z'
" let g:ctrlp_user_command = '~/work/mv-vim/bin/ctrlp-find.sh %s'
" let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --ignore ''.git'' --ignore ''.DS_Store'' --ignore ''node_modules'' --hidden -g ""|sort'
" let g:ctrlp_user_command = '/usr/local/bin/gfind %s -type f | /usr/local/bin/gsort'

  " my mappings
    map <leader>ff :CtrlP<CR>
    map <leader>fr :CtrlPRoot<CR>
    map <leader>fc :CtrlPCurFile<CR>
    map <leader>fw :CtrlPCurWD<CR>
    "
    map <leader>fb :CtrlPBuffer<CR>
    map <leader>fm :CtrlPMRU<CR>
    map <leader>fx :CtrlPMixed<CR>


    map <leader>cp :CtrlP<CR>
    map <leader>cr :CtrlPRoot<CR>
    map <leader>cf :CtrlPCurFile<CR>
    map <leader>cw :CtrlPCurWD<CR>
    map <leader>c. :CtrlP ../
    "
    map <leader>cb :CtrlPBuffer<CR>
    map <leader>cm :CtrlPMRU<CR>
    map <leader>cx :CtrlPMixed<CR>


    map <leader>cc :CtrlPClearCache<CR>
    map <leader>ca :CtrlPClearAllCaches<CR>


    map <leader>cbm :CtrlPBookmarkDir<CR>
    map <leader>cbk :CtrlPBookmarkDir<CR>
    map <leader>cba :CtrlPBookmarkDirAdd ./


    " 0: search by pathname
    " 1: search by filename
    " Can be toggled on/off by pressing <c-d> inside the prompt.
    let g:ctrlp_by_filename = 1

    " 0: search by filename
    " 1: set default: search by regexp
    " Can be toggled on/off by pressing <c-r> inside the prompt.
    let g:ctrlp_regexp = 0

    " default:
    " let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'
    let g:ctrlp_match_window = 'top,order:ttb,min:20,max:20,results:20'

    " CtrlP working dir
    let g:ctrlp_working_path_mode = 'c'

    " Do not jump to file if open in another place
    let g:ctrlp_switch_buffer = 0

    " Include current open file in the list of entries
    let g:ctrlp_match_current_file = 1

    " My custom mappings
    "   c-h : split below + :set splitbelow
    "   c-l : split right + :set splitright
    "   c-i : mark to open
    let g:ctrlp_prompt_mappings = {
      \ 'PrtBS()':              ['<bs>' ],
      \ 'PrtDelete()':          ['<del>'],
      \ 'PrtDeleteWord()':      ['<c-w>'],
      \ 'PrtClear()':           ['<c-u>'],
      \ 'PrtSelectMove("j")':   ['<c-j>', '<down>'],
      \ 'PrtSelectMove("k")':   ['<c-k>', '<up>'],
      \ 'PrtHistory(-1)':       ['<c-n>'],
      \ 'PrtHistory(1)':        ['<c-p>'],
      \ 'AcceptSelection("e")': ['<cr>' ],
      \ 'AcceptSelection("h")': ['<c-h>', '<c-cr>'],
      \ 'AcceptSelection("v")': ['<c-v>', '<c-l>' ],
      \ 'AcceptSelection("t")': ['<c-t>'],
      \ 'ToggleFocus()':        ['<s-tab>'],
      \ 'ToggleRegex()':        ['<c-r>'],
      \ 'ToggleByFname()':      ['<c-d>'],
      \ 'ToggleType(1)':        ['<c-f>'],
      \ 'ToggleType(-1)':       ['<c-b>'],
      \ 'PrtInsert()':          ['<c-\>'],
      \ 'PrtCurStart()':        ['<c-a>'],
      \ 'PrtCurEnd()':          ['<c-e>'],
      \ 'PrtCurLeft()':         ['<left>' ],
      \ 'PrtCurRight()':        ['<right>'],
      \ 'PrtClearCache()':      ['<F5>'],
      \ 'PrtDeleteEnt()':       ['<F7>'],
      \ 'CreateNewFile()':      ['<c-y>'],
      \ 'MarkToOpen()':         ['<c-i>','<c-z>'],
      \ 'OpenMulti()':          ['<c-o>'],
      \ 'PrtExit()':            ['<esc>', '<c-c>'],
      \ }


