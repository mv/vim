
" vim:ft=vim:set foldlevel=9:

" Vim-UI
" ======

    " ColorScheme:
    " ============

    set t_Co=256            " Terminal 256 colors
    set bg=dark
    colorscheme desert                  " default
    silent! colorscheme wombat256mod    " use if present

    map <leader>c0 :echo g:colors_name<CR>
    map <leader>c1 :colorscheme desert<CR>
    map <leader>c2 :colorscheme wombat256mod<CR>
"   map <leader>c9 :colorscheme vividchalk<CR>


    " Terminal: full path name in terminal window
    " ===========================================
    autocmd BufEnter * let &titlestring=expand("%:p")." - ".v:servername


    " Tabs:
    " =====
    set showtabline=2	  " always show tab bar
"   set tabline=          " default: [number of windows][m][t]


    " Left: SignColumn
    " ================
    set signcolumn=yes
    :hi SignColumn ctermbg=black guibg=black 

    " Right: ColorColumn: show textwidth limit
    " ========================================
    set colorcolumn=+1      " width: +3,+4,+5
    :hi ColorColumn ctermbg=black guibg=black 

    " Display: Cursor bars
    " ====================
    set cursorcolumn      " vertical highlight
    set cursorline        " horizontal highlight
"   :hi CursorLine gui=underline cterm=underline   " cursorline as underline


    " Mouse: Terminal + GUI
    " =====================
    set mouse=a             " mouse active in all modes
    set mousehide           " Hide the mouse pointer while typing


    """
    """ Gvim settings
    """
    if has("gui_running")

	" MacVim
"       set guifont=Monaco:h12 
"       set guifont=Monaco:h15 
        set guifont=Menlo:h15  

        set winaltkeys=no       " wak: no ALT keys for menus

        " GUI window size
        set transparency=4      " background transparency
"       set columns=178
"       set lines=44

        set browsedir=buffer    " filebrowser on directory of current buffer

        "et guioptions=egmtrLT  " Default
        "              ||||||+--- show toolbar
        "              |||||+---- left-hand scrollbar present if vertical split
        "              ||||+----- right-hand scrollbar always present
        "              |||+------ include tearoff menu itens
        "              ||+------- show GUI menu
        "              |+-------- menu: inactive itens in gray
        "              +--------- show GUI tabs
        "et guioptions=egmrL    " Default when -u NORC
        set guioptions=egmt     " GUI tabs+menu. No toolbar/scrollbars
        set guitablabel=%n:%t   " guitablabel. See 'statusline' flags.
        set guitabtooltip=%n:%F " guitabtooltip: full path

	command! ToolBarOn  :set guioptions+=T<CR>
	command! ToolBarOff :set guioptions-=T<CR>

  	nnoremap <leader>sa :browse confirm saveas<CR>


    endif


