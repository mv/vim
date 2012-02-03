
" Vim-UI       {{{
" ================

    " Visibles                    {{{
    set title               " set window name as titlestring
    set number              " linenumber
    set numberwidth=5       " linenumber width
    "et relativenumber      " relative number
    set cursorline          " horizontal highlight
    set nocursorcolumn      " vertical highlight
    set nostartofline       " keep cursor in same column where moving up/down

    set completeopt=menu,preview,longest    " completion popup menu options
    set nrformats=alpha,octal,hex           " C-A/C-X: increment/decrement

    set noerrorbells        " no bells on error messagens
    set visualbell          " no sound bells

    "  }}}
    " Viewport                    {{{
    set scrolloff=3         " keep 3 lines scrolling up/down
    set sidescroll=10       " keep 10 columns scrolling left/right
    set sidescrolloff=10    " keep 10 columns scrolling left/right
    "  }}}
    " invisible chars             {{{
    " list/invlist/nolist
    set nolist                      " [no]list invisible chars
    set listchars=tab:▸\ ,trail:·,eol:¬,extends:>,precedes:<
    "             |       |       |     |         +-- line befor left margin: <
    "             |       |       |     +-- line beyond right margin: >
    "             |       |       +-- EOF: _
    "             |       +-- trailing spaces: ....
    "             +-- each tab: >----
    "
    " Char  CTRL-V+u    i+CTRL-V+digit
    " ¬       ac        U+00AC          not
    " ▸     25b8        U+25B8          black right triangle
    "
    " }}}
    " formatoptions               {{{
    " default: tcq vide 'help fo-table'
    set formatoptions=cqrn
    "                 ||||
    "                 |||+-- recognize numbered lists
    "                 ||+--- insert comment leader after <Enter> in Insert mode
    "                 |+---- allow formatting using gq
    "                 +----- auto-wrap comments
    "et formatoptions=rq
    " }}}
    " line breaks                 {{{
    set linebreak                   " when wrapping, uses chars listed in breakt
    set breakat=\ ^I!@*-+;:,./?     " when wrapping, break at these characters
    set showbreak=…                 " what to show at the start of a wrapped line
    set iskeyword+=48-57,192-255
    set iskeyword+=_,$,@,%,#        " none of these are word dividers
    " }}}
    " text wrap                   {{{
    set backspace=indent,eol,start  " make backspace a more flexible
    set textwidth=78                " tw
    set nowrap sidescroll=1         " [no] wrap long lines
    "et whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
    "             | | | | | | | | |
    "             | | | | | | | | +-- "]" Insert and Replace
    "             | | | | | | | +-- "[" Insert and Replace
    "             | | | | | | +-- "~" Normal
    "             | | | | | +-- <Right> Normal and Visual
    "             | | | | +-- <Left> Normal and Visual
    "             | | | +-- "l" Normal and Visual (not recommended)
    "             | | +-- "h" Normal and Visual (not recommended)
    "             | +-- <Space> Normal and Visual
    "             +-- <BS> Normal and Visual
    " }}}
    " ColorScheme                 {{{
        set bg=dark
        set t_Co=256                " Terminal 256 colors
        map <leader>c1 :colorscheme ir_black3<CR>
        map <leader>c2 :colorscheme torte    <CR>
        map <leader>c3 :colorscheme desert   <CR>
        map <leader>c4 :colorscheme vividchalk   <CR>
        map <leader>c5 :colorscheme wombat256mod <CR>
        map <leader>c0 :echo g:colors_name   <CR>

        " Terminal vim theme
"       colorscheme torte
"       silent! colorscheme vividchalk
"       silent! colorscheme ir_black3
        silent! colorscheme wombat256mod

    " }}}
    " Gvim settings               {{{
    if has("gui_running")

        auto BufEnter * let &titlestring=expand("%:p")." - ".v:servername

        if filereadable(expand("~/.vim/colors/ir_black3.vim"))
            colorscheme ir_black3
        endif

        if filereadable(expand("~/.vim/colors/vividchalk.vim"))
            colorscheme vividchalk
        endif

        set mouse=a             " mouse active in all modes
        set mousehide           " Hide the mouse pointer while typing

        set nocursorcolumn
        set guioptions=egmrLtT  " Default
        "et guioptions=egmrLt   " No toolbar
        set guifont=Monaco:h12  " MacVim
        set guiheadroom=5       " nr of pixels subtracter from screen to fit GUI
        set tabpagemax=15       " tpm: max nro of tab windows
        set gtl=%t gtt=%F       " guitablabel/guitabtooltip

        set colorcolumn=+1,+2,+3,+4,+5
        set columns=178
        set lines=44
        set transp=4

        set browsedir=buffer    " open filebrowser on directory of current buffer
        set winaltkeys=no       " wak: no ALT keys for menus

    endif
    " }}}
    " Status line                 {{{

        " my status line
        " --------------
        set laststatus=2   " always show statusline

        set statusline=\                               " one blank

    "   set statusline+=\ %f\                          " filename
    "   set statusline+=%h%m%r                         " flags

        set statusline+=[
        set statusline+=%n:                            " buffer number
        set statusline+=%{strlen(&ft)?&ft:'none'}      " filetype
    "   set statusline+=,%{&encoding}                  " encoding
    "   set statusline+=,%{&fileformat}                " file format
        set statusline+=]

        set statusline+=\ [%2.(%c%)\ lin:%-7.(%l/%L%)\ %p%%] " col lin/tot perc

    "   set statusline+=\ %f                               " filename
        set statusline+=\ [%t]                             " filename
        set statusline+=\ %m%r%h%w%q

        if filereadable(expand("~/.vim/plugin/rails.vim"))
            set statusline+=\ %{rails#statusline(1)}      " rails.vim
        endif

        if filereadable(expand("~/.vim/plugin/fugitive.vim"))
            set statusline+=\ %{fugitive#statusline()}     " git branch
        endif

        if filereadable(expand("~/.vim/plugin/capslock.vim"))
            set statusline+=\ %{capslockstatusline()}      " capslock.vim
        endif

    "   set statusline+=%0                             " break
    "   set statusline+=asc:[%3.(%b%)\ %3.(x%b%)]      " current char (ga)

    "   if filereadable(expand("~/.vim/plugin/taglist.vim"))
    "       set statusline+=%(tag:[%{tlist_get_tagname_by_line()}]%)
    "   endif

    "   set statusline+=\ [%2.(%c%)\ lin:%-7.(%l/%l%)]\ %p
    "   set statusline+=\ [col:%2.(%c%)\ lin:%-7.(%l/%l%)]\ %p

        if filereadable(expand("~/.vim/plugin/vimbuddy.vim"))
            set statusline+=%=%{vimbuddy()} " vim buddy
        endif

    " }}}
    " Folding                     {{{
    " ================
        set foldenable              " Turn on folding
        set foldmethod=marker       " Fold on specific marker
        set foldmarker={,}          " Markers to use.
        set foldlevel=100           " Don't autofold anything (but I can still fold manually)
        set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds

        set foldtext=SimpleFoldText() " Custom fold text function (cleaner than default)
        function! SimpleFoldText()
            return getline(v:foldstart).' '
        endfunction

        " Fold HTML tags
        nnoremap <leader>ft Vatzf

    " }}}

" }}}


" vim: set foldlevel=9

