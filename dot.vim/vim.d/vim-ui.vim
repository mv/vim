
" Vim-UI
" ================

    " Visibles
    set title               " set window name as titlestring
    set visualbell          " no sound bells
    set noerrorbells        " no bells on error messagens

    " Linenumbers
    set number              " linenumber
    set numberwidth=5       " linenumber width

    " Command line
    set showcmd             " show command line

    " Viewport
    set scrolloff=3         " keep 3 lines scrolling up/down
    set sidescroll=10       " keep 10 columns scrolling left/right
    set sidescrolloff=10    " keep 10 columns scrolling left/right

    " Cursor bars
    set cursorline          " horizontal highlight
    set nocursorcolumn      " vertical highlight

    " Autocompletion
    set completeopt=menuone,preview,longest    " completion popup menu options

    " Cursor position on navigation
"   set virtualedit=all             " allow moving past end of line in all modes
    set virtualedit=block,insert,onemore


    " ColorScheme
    set bg=dark
    set t_Co=256                " Terminal 256 colors

    map <leader>c0 :echo g:colors_name<CR>
    map <leader>c1 :colorscheme torte<CR>
    map <leader>c2 :colorscheme ir_black3<CR>
    map <leader>c3 :colorscheme vividchalk<CR>
    map <leader>c4 :colorscheme wombat256mod<CR>

    " Terminal vim theme
    colorscheme torte                   " default
    silent! colorscheme wombat256mod    " use if present

    """
    """ Gvim settings
    """
    if has("gui_running")

        silent! colorscheme ir_black3   " gui: use if present

        auto BufEnter * let &titlestring=expand("%:p")." - ".v:servername

        set mouse=a             " mouse active in all modes
        set mousehide           " Hide the mouse pointer while typing
        set cursorcolumn

        set guioptions=egmrLtT  " Default
        "et guioptions=egmrLt   " No toolbar
        set gtl=%t gtt=%F       " guitablabel/guitabtooltip

        set guifont=Monaco:h12  " MacVim
        set guiheadroom=5       " nr of pixels subtracter from screen to fit GUI
        set transp=4            " background transparency


        " GUI window size
        set columns=178
        set lines=44
        set tabpagemax=15       " tpm: max nro of tab windows

        " show textwidth limit
        set colorcolumn=+3,+4,+5

        set browsedir=buffer    " open graphical filebrowser on directory of current buffer
        set winaltkeys=no       " wak: no ALT keys for menus

    endif


" vim: set foldlevel=9

