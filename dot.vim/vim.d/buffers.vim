
" Buffers:
" ========
    " Tips
    "     :e!       ignore changes, restore original file
    "     :bd  [n]  buf del [number n]
    "     :bd! [n]  buf del, discard changes
    "     <C-^>     switch to alternate file

"   set hidden                      " hide buffer instead of closing
"   if version >= 703               " New in 7.3 !
"       set autochdir               " always switch to the current file directory
"   endif

    """
    """ Creating:
    """     Ref http://technotales.wordpress.com/2010/04/29/vim-splits-a-guide-to-doing-exactly-what-you-want/
    """
    nmap <leader>bh   :leftabove   vnew<CR>
    nmap <leader>bl   :rightbelow  vnew<CR>
    nmap <leader>bk   :leftabove    new<CR>
    nmap <leader>bj   :rightbelow   new<CR>
    nmap <leader>bth  :topleft     vnew<CR>
    nmap <leader>btl  :botright    vnew<CR>
    nmap <leader>btk  :topleft      new<CR>
    nmap <leader>btj  :botright     new<CR>


" vim: set foldlevel=9

