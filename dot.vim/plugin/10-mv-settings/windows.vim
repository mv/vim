
" vim:ft=vim:set foldlevel=9:

" Windows
" =======

    set equalalways         " ea: resize all windows to same size to fit a new one
"   set splitbelow          " sb: split new window below current window
"   set splitright          " spr: split new window to the right

"   nmap <leader>o   :only <CR>
"   nmap <leader>sb  :set scrollbind<CR>
"   nmap <leader>nsb :set noscrollbind<CR>

    """
    """ Help window on the righ
    """
"   autocmd FileType help wincmd L


    """
    """ Creating:
    """
    nmap <leader>osp  :split<CR>
    nmap <leader>vsp  :vsplit<CR>
    nmap <leader>sp   :tab split<CR>

    " open file under cursor to new tab
    nmap <leader>tgf  <C-W>gf


    """
    """ Navigating:
    """   cursor to next window
    """   
    nmap <C-J> <C-W>j
    nmap <C-K> <C-W>k
    nmap <C-L> <C-W>l
    nmap <C-H> <C-W>h

    """
    """ Tip:
    """
    "     :split #   : open alternate buf down
    "     :vsplit #  : open alternate buf right
    "
    "     sf[ind] /work/*/dev
    "     sf[ind] /work/**/dev

