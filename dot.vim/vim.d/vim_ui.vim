
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
    set sidescroll=0        " keep 'n' columns scrolling left/right
    set sidescrolloff=0     " keep 'n' columns scrolling left/right

    " Cursor bars
    set cursorline          " horizontal highlight
    set nocursorcolumn      " vertical highlight

    " Autocompletion
    set completeopt=menuone,preview,longest    " completion popup menu options

    " Cursor position on navigation
    set virtualedit=all     " allow moving past end of line in all modes
"   set virtualedit=block,insert,onemore

    " ColorScheme
    set bg=dark

    map <leader>c0 :echo g:colors_name<CR>
    map <leader>c1 :colorscheme ir_black3<CR>
    map <leader>c2 :colorscheme wombat256mod<CR>
    map <leader>c3 :colorscheme vividchalk<CR>
    map <leader>c8 :colorscheme desert<CR>
    map <leader>c9 :colorscheme torte<CR>

    " Terminal vim
    set t_Co=256            " Terminal 256 colors
    set showtabline=1       " only if there are at least two tab pages

    " Terminal vim theme
    colorscheme torte                   " default
    silent! colorscheme wombat256mod    " use if present


    """
    """ Printing
    """
    set printfont=:h08
"   set printheader="%<%f%h%m%=Page %N"
    set printheader=%F
    set printheader+=%=Pg\ %N

    " macvim: gvimrc
    set printexpr=system('open\ −a\ Preview\ '.v:fname_in)\ +\ v:shell_error


    """
    """ Gvim settings
    """
    if has("gui_running")

        silent! colorscheme ir_black3    " gui: use if present
    "   silent! colorscheme wombat256mod

        autocmd BufEnter * let &titlestring=expand("%:p")." - ".v:servername

        set mouse=a             " mouse active in all modes
        set mousehide           " Hide the mouse pointer while typing
        set cursorcolumn

        "et guioptions=egmtrLT  " Default
        set guioptions=egmt     " No toolbar/scrollbars
        set showtabline=2       " always show tab bar
        set gtl=%t              " guitablabel. See statusline flags.
        set gtt=%F              " guitabtooltip

"       set guifont=Monaco:h13  " MacVim
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


    " CursorPosition: Come back to last position:
    autocmd BufReadPost *   if line("'\"") > 0
                        \ && line("'\"") <= line("$") |
                        \    exe "normal! g'\""       |
                        \ endif


    " emulates 'autochdir' using 'lcd' for each buffer
"   autocmd BufReadPost * lcd %:p:h | cd /work/mv-vim/
"   autocmd BufReadPost * silent! lcd %:p:h



" vim: set foldlevel=9

