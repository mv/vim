
" vim:ft=vim:set foldlevel=9:

" Buffers:
" ========
    " Tips
    "     :e!       ignore changes, restore original file
    "     :bd  [n]  buf del [number n]
    "     :bd! [n]  buf del, discard changes
    "     <C-^>     switch to alternate file

"   set hidden      " hide buffer instead of closing

    """
    """ Creating:
    """     Ref http://technotales.wordpress.com/2010/04/29/vim-splits-a-guide-to-doing-exactly-what-you-want/
    """
    nmap <leader>bh   :leftabove  vnew<CR>
    nmap <leader>bl   :rightbelow vnew<CR>
    nmap <leader>bk   :leftabove   new<CR>
    nmap <leader>bj   :rightbelow  new<CR>

    """
    """ Removing:
    """
    nmap <leader>bd :bprevious<CR>:bdelete #<CR>
    nmap <leader>bw :bprevious<CR>:bwipeout #<CR>


