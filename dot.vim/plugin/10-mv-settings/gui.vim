
" vim:ft=vim:set foldlevel=9:

" Vim-UI
" ======

    " Terminal vim
    " ============
    set t_Co=256            " Terminal 256 colors

    " ColorScheme
    " ===========
    set bg=dark

    " Terminal vim theme
    " ==================
    colorscheme desert                  " default
    silent! colorscheme wombat256mod    " use if present

    map <leader>c0 :echo g:colors_name<CR>
    map <leader>c1 :colorscheme wombat256mod<CR>
    map <leader>c2 :colorscheme desert<CR>
"   map <leader>c9 :colorscheme vividchalk<CR>

    """
    """ Gvim settings
    """
    if has("gui_running")

        " GUI window size
        set columns=178
        set lines=44
        set tabpagemax=15       " tpm: max nro of tab windows

"       set guifont=Monaco:h12  " MacVim
"       set guifont=Monaco:h15  " MacVim
        set guifont=Menlo:h15   " MacVim

        set mouse=a             " mouse active in all modes
        set mousehide           " Hide the mouse pointer while typing

        "et guioptions=egmtrLT  " Default
        set guioptions=egmt     " No toolbar/scrollbars
        set showtabline=2       " always show tab bar
        set gtl=%t              " guitablabel. See statusline flags.
        set gtt=%F              " guitabtooltip

        set guiheadroom=5       " nr of pixels subtracter from screen to fit GUI
        set transp=4            " background transparency

        " show textwidth limit
"       set colorcolumn=+3,+4,+5
        set colorcolumn=+1
        :hi ColorColumn ctermbg=black guibg=black 

        set browsedir=buffer    " open graphical filebrowser on directory of current buffer
        set winaltkeys=no       " wak: no ALT keys for menus

        autocmd BufEnter * let &titlestring=expand("%:p")." - ".v:servername

    endif


    " SignColumn
    " ==========
    set signcolumn=yes
    :hi SignColumn ctermbg=black guibg=black 

    " Cursor bars
    " ===========
    set cursorcolumn      " vertical highlight
    set cursorline        " horizontal highlight
    " :hi CursorLine gui=underline cterm=underline   " cursorline as underline

