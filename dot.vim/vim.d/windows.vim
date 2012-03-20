
" Windows
" ================

    set splitbelow          " sb: split new window below current window
    set splitright          " spr: split new window to the right
    set equalalways         " ea: resize all windows to same size to fit a new one

    nmap <leader>o   :only <CR>
    nmap <leader>sb  :set scrollbind<CR>
    nmap <leader>nsb :set noscrollbind<CR>

    """
    """ Navigating:
    """
    map <C-J> <C-W>j
    map <C-K> <C-W>k
    map <C-H> <C-W>h
    map <C-L> <C-W>l

    """
    """ Creating:
    """     Ref http://technotales.wordpress.com/2010/04/29/vim-splits-a-guide-to-doing-exactly-what-you-want/

    nmap <leader>sp   :split<CR>
    nmap <leader>vsp  :vsplit<CR>

    nmap <leader>sph  :leftabove  vsplit<CR>
    nmap <leader>spl  :rightbelow vsplit<CR>
    nmap <leader>spk  :leftabove  split<CR>
    nmap <leader>spj  :rightbelow split<CR>

    """
    """ Moving:
    """
    nmap <leader>spJ <C-W>J
    nmap <leader>spK <C-W>K
    nmap <leader>spH <C-W>H
    nmap <leader>spL <C-W>L

    nmap <leader>spt <C-W>T
    nmap <leader>spr <C-W>r
    nmap <leader>spR <C-W>R
    nmap <leader>spx <C-W>x

    """
    """ Resizing:
    """
    nmap <leader>sp= <C-W>=
    " <C-W> -
    " <C-W> +
    " <C-W> <
    " <C-W> >
    " <C-W> _
    " <C-W> |

    " Look MA! No arrow keys in Vim!!!
    " map <down>  <C-W>j
    " map <up>    <C-W>k
    " map <left>  <C-W>h
    " map <right> <C-W>l

    """
    """ Tip:
    """
    "     :split #   : open alternate buf down
    "     :vsplit #  : open alternate buf right
    "
    "     sf[ind] /work/*/dev
    "     sf[ind] /work/**/dev

" Windows Tabs
" ================
    " Tip :tabs
    "      :tabfirst
    "      :tablast
    "      :tabonly
    "      :tabf[ind]

    " split buf to new tab
    "map <leader>ts :tab split<CR>

    " open file under cursor to new tab
    map <leader>tf <C-W>gf

    " open file under cursor to new split right
    " <C-W><C-F>: open file under cursor to new split below
    " <C-W><S-L>: move split to right
    map <leader>sf <C-W><C-F><C-W><S-L>

    " open all current buffers, one per tab
    map <leader>ta :tab sball

" vim: set foldlevel=9

