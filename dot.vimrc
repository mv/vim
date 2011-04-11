" dot.vimrc
"     ferreira.mv[ at ]gmail.com
"     based on http://vi-improved.org/vimrc.php
"     2008/12
"
set nocompatible

" Pathogen     {{{
" ================

    " call pathogen {{{
    " All plugins under the ~/.vim/bundle directory
    filetype off
    call pathogen#helptags()
    call pathogen#runtime_append_all_bundles()
    " }}}

" }}}
" Settings     {{{
" ================

    " syntax enable               {{{
    syntax on
    filetype on
    filetype indent on
    filetype plugin on
    " }}}
    " general                     {{{
    set modeline                    " modeline on

    set virtualedit=block           " allow moving past end of line in block selection mode
    set virtualedit=all             " allow moving past end of line in block selection mode

    " set timeoutlen=5000             " time in ms to complete a mapped key combination
    " set timeoutlen=2000             " Wait 2 seconds before timing out a mapping
    " set ttimeoutlen=100             " and only 100 ms before timing out on a keypress.

    " set clipboard+=unnamed          " yy, D, p: share OS clipboard
    " set clipboard-=unnamed          " NOT sharing OS clipboard
    " }}}
    " command line                {{{
    set showcmd                 " show command line
    set wildmenu                " turn on command line completion wild style
    set wildmode=list:longest   " turn on wild mode huge list
    set history=300                 " history size
    " }}}
    " search/replace              {{{
    set gdefault                    " global search/replace by default
    set incsearch                   " Highlight dynamically as they are typed.
    set nohlsearch                  " Highlight search terms: off on start
    set hlsearch                    " Highlight search terms
    set report=0                    " report all lines changed
    " }}}
    " mksession                   {{{
    set sessionoptions=blank,buffers,curdir,folds,globals,options,resize,tabpages,winsize
    "                  |     |       |      |     |       |       |      |        +-- size of windows
    "                  |     |       |      |     |       |       |      +-- tabs opened
    "                  |     |       |      |     |       |       +- size of line/columns
    "                  |     |       |      |     |       +-- options set
    "                  |     |       |      |     +-- globals set
    "                  |     |       |      +-- state of folds
    "                  |     |       +-- current dir
    "                  |     +-- hidden/unloaded buffers
    "                  +-- empty windows
    " }}}
    " viminfo                     {{{
    set viminfo='100,f1,<500,:50,@50,/50,h,%
    "           |    |  |    |   |   |   | +-- save/restore buffer list
    "           |    |  |    |   |   |   +-- disable hlsearch
    "           |    |  |    |   |   +-- search-line history
    "           |    |  |    |   +-- input-line history
    "           |    |  |    +-- command line history
    "           |    |  +-- lines saved by each register
    "           |    +-- store file marks
    "           +-- number of files for which marks are kept
    set viminfo='100,f1,<500,:50,@50,/50,h
    " }}}
    " vi compatible options       {{{
    set cpoptions=aABcefFmqs
    "             |||||||||+-- Set buffer options when entering the buffer
    "             ||||||||+-- When joining lines, leave the cursor between joined lines
    "             |||||||+-- When a new match is created (showmatch) pause for .5
    "             ||||||+-- :write command updates current file name
    "             |||||+-- :read command updates current file name
    "             ||||+-- Automatically add <CR> to the last line when using :@r
    "             |||+-- Searching continues at the end of the match at the cursor position
    "             ||+-- A backslash has no special meaning in mappings
    "             |+-- :write updates alternative file name
    "             +-- :read updates alternative file name
    set cpoptions+=#
    "              |
    "              +-- A count before "D", "o" and "O" has no effect.
    set cpoptions-=n
    "              +-- column for 'number' does not show wrapped text
    " }}}
    " vi files and working files  {{{
    scriptencoding  utf-8
    set encoding=utf-8 nobomb       " BOM often causes trouble
    set fileformats=unix,dos,mac    " support all three, in this order

    set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png,*~,*.lo
                                " ignore these list file extensions in
                                " glob()/expand()

    set noautoread                  " do not load a modified file, unless requested
    set noautowrite                 " NEVER write a file, unless requested
    set noautowriteall              " idem
    set writeany                    " write on readonly files

    set nobackup                    " [donot] make backup files
    set noswapfile                  " do not use swap files (brave mode on!)
    set directory=/tmp              " where to put swap files in
    set backupdir=/tmp              " where to put backup files
    set viewdir=/tmp                " where to put view files
    " Creating directories if they don't exist
    " silent execute '!mkdir -p $HOME/.vimbackup'
    " silent execute '!mkdir -p $HOME/.vimswap'
    " silent execute '!mkdir -p $HOME/.vimviews'

    if has('persistent_undo')
        set undofile                " keep a permanent undofile (vide :wundo/:rundo)
        set undodir=/tmp
        " if ! isdirectory(&undodir)
        "     call mkdir(&undodir, 'p')
        " endif
    endif

    " }}}

" }}}
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
        map <leader>c1 :colorscheme ir_black3<CR>
        map <leader>c2 :colorscheme torte    <CR>
        map <leader>c3 :colorscheme desert   <CR>
        map <leader>c0 :echo g:colors_name   <CR>

        " Terminal vim theme
        colorscheme torte
    " }}}
    " Gvim settings               {{{
    if has("gui_running")

        auto BufEnter * let &titlestring=expand("%:p")." - ".v:servername

        if filereadable(expand("~/.vim/colors/ir_black3.vim"))
            colorscheme ir_black3
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
" Coding Rules {{{
" ================

    " Matching Brackets             {{{
    set showmatch           " show matching brackets
    set matchtime=5         " ms blinking showmatch
    "}}}
    " Case                          {{{
    set ignorecase          " case insensitive
    set infercase           " if there are caps adjust auto-completion
    set smartcase           " if there are caps go insensitive
    "}}}
    " TabStops                      {{{
    set tabstop=4           " real tabs will show 8 spaces
    set softtabstop=4       " how many spaces in a tabstop
    set shiftwidth=4        " sw: indent size
    set expandtab           " no tabs - space in place of tabstops
    set smarttab            " sta: space in place of tabs in a new line
    " vim:set ts=4 sts=4 sw=4 et   sta   nolist - spaces
    " vim:set ts=8 sts=0 sw=8 noet nosta list   - tabs
    "}}}
    " Indent                        {{{
    set autoindent          " ai: pre-req for si
    set copyindent          " ci: copy same character used in previous indent line
    set smartindent         " si: on
    set shiftround          " round indent to shiftwidth
    "}}}
    " VimGrep                       {{{
    set grepprg=ack
    set grepformat=%f:%l:%m
    "}}}

" }}}
" Commands     {{{
" ================

    " Shortcuts                     {{{
    command! W  :w
    command! WW :browse confirm saveas
    command! WQ :wq
    command! Q  :q

    command! Rehash     source $MYVIMRC
    command! Helptags   helptags ~/.vim/doc
    command! Helptags   call pathogen#helptags()

    command! Color      echo g:colors_name
    "}}}
    " On/Off                        {{{
    " start/stop sharing OS clipboard
    command! Clipon     set clipboard+=unnamed
    command! Clipoff    set clipboard-=unnamed

    " tab to spaces to tab
    command! TabOn      set noexpandtab|retab!
    command! TabOff     set expandtab|retab!
    "}}}
    " FileTypes                     {{{

    " Ref: https://github.com/henrik/dotfiles/blob/master/vimrc#L217-226
    " Quicker filetype setting:
    "   :F html
    " instead of
    "   :set ft=html
    " Can tab-complete filetype.
    command! -nargs=1 -complete=filetype F set filetype=<args>

    " Even quicker setting often-used filetypes.
    command! FR set filetype=ruby
    command! FS set filetype=sql
    command! FT set filetype=txt

    "}}}

" }}}
" Mappings     {{{
" ================
    " Tip: D  : command key
    "      D-S: command+shift key

    let mapleader=","

    " GUI                       {{{
    " ======================
    " linenumber on/off
    nmap <leader>nu  :set invnumber<CR>

    " relativenumber on/off
    nmap <leader>rnu :set invrnu   <CR>

    " set cursorcolumn/nocursorcolumn
    nmap <leader>cuc :set invcuc   <CR>

    " Highlight search on/off
    nmap <leader>h   :set invhls<CR>

    " list invisibles on/off
    nmap <leader>l   :set invlist  <CR>

    " }}}
    " Identation                {{{
    " ======================

    " Normal mode:
    nmap <D-[> <<
    nmap <D-]> >>

    " Visual mode
    "     (gv: keeps selection)
    vnoremap > ><CR>gv
    vnoremap < <<CR>gv
    vmap <D-[> <gv
    vmap <D-]> >gv

    " }}}
    " Movements                 {{{
    " ======================

    " http://vi-improved.org/vimrc.php
    " space/shift-space: scroll in normal mode
    " noremap <S-SPACE> <C-B>
    " noremap <SPACE>   <C-F>

    " row up/down if wrap active
    " http://nvie.com/posts/how-i-boosted-my-vim/
    nnoremap j gj
    nnoremap k gk

    " http://blog.learnr.org/post/59098925/configuring-vim-some-more
    " begin/end of a  line
    map H ^
    map L $

    " Out of INSERT mode
    " inoremap jj <Esc>
    " inoremap jk <Esc>
    inoremap jkk <Esc>
    inoremap ;l <Esc>

    " }}}
    " Editing                   {{{
    " =======================
    " CTRL-K:  delete so the end of line
    nmap <C-K> D

    " K = inverted J: join line up
    nmap K ddpkJ

    " }}}
    " Using marks               {{{
    " =======================

    " ` is more useful than ' but less accessible.
    " nnoremap ' `
    " nnoremap ` '

    " }}}
    " Editing entire buffer     {{{
    " ======================

    " Reformat
    nmap _= :call Preserve("normal gg=G")<CR>

    " Strip trailing spaces
    nmap _$ :call Preserve("%s/\\s\\+$//e")<CR>

    " dos2,nix
    nmap _n :call Preserve("% s/\r$//")<CR>

    " }}}
    " Editing vimrc             {{{
    " =======================

    nmap <leader>ev  :e   $MYVIMRC<CR>
    nmap <leader>sev :vsp $MYVIMRC<CR>

    " }}}
    " Copy/paste registers      {{{
    " =======================

    " (Correcting my international keyboard)
    nmap \ "

    " allow deleting selection without updating the clipboard (yank buffer)
    " Ref: http://www.pixelbeat.org/settings/.vimrc
    " vnoremap x "_x
    " vnoremap X "_X

    " Yank/paste to/from the OS clipboard with ,y and ,p
    nmap <leader>p "*p
    nmap <leader>P "*P
    nmap <leader>y "*y
    nmap <leader>yy "*yy

    " Quick yanking to the end of the line
    nmap Y y$

    " Reselect text that was just pasted with ,v
    nnoremap <leader>v V`]

    "don't move the cursor after pasting
    "(by jumping to back start of previously changed text)
    " noremap p p`[
    " noremap P P`[

    " }}}
    " Formatting                {{{
    " ======================

    " Re-hardwrap paragraphs of text:
    nnoremap <leader>g= gqip

    " Q formats paragraphs, instead of entering ex mode
    noremap Q gq

    " Underline header
    map <leader>= yypVr=
    map <leader>- yypVr-

    " Creating underline/overline headings for markup languages
    " Inspired by http://sphinx.pocoo.org/rest.html#sections
    "nnoremap <leader>1 yyPVr=jyypVr=
    "nnoremap <leader>2 yyPVr*jyypVr*
    "nnoremap <leader>3 yypVr=
    "nnoremap <leader>4 yypVr-
    "nnoremap <leader>5 yypVr^
    "nnoremap <leader>6 yypVr"

    " }}}
    " Command Line              {{{
    " =======================
    " Saving from pressing SHIFT
    " :w => \w
    " nmap \ :

    " making vim regex act like Perl Regex
    "     Thanks to Steve Losh for this liberating tip
    "     See http://stevelosh.com/blog/2010/09/coming-home-to-vim
    nnoremap / /\v
    vnoremap / /\v
    nnoremap ? ?\v
    vnoremap ? ?\v

    " CTRL-g shows filename and buffer number, too.
    " Ref:  https://github.com/godlygeek/vim-files/blob/master/.vimrc
    nnoremap <C-g> 2<C-g>

    " Pull word under cursor into LHS of a substitute (for quick search and
    " replace)
    " nmap <leader>z :% s#\<<C-r>=expand("<cword>")<CR>\>#

    " http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
    nmap <leader>cd :cd <C-R>=expand("%:p:h")<CR>

    "}}}
    " Shortcuts                 {{{
    " ======================

    nmap <leader>q  :q <CR>
    nmap <leader>q1 :q!<CR>
    nmap <leader>w  :w <CR>
    nmap <leader>wa :wa<CR>
    nmap <leader>wq :wq!<CR>
    nmap <leader>ww :w !sudo tee % >/dev/null
    nmap <leader>sa :browse confirm saveas<CR>

    cmap w!! w !sudo tee % >/dev/null

    " }}}
    " Folding                   {{{
    " =======================

    " <space> toggles folds opened and closed
    " nnoremap <space> za
    " <space> in visual mode creates a fold over the marked range
    " vnoremap <space> zf

    " Tip: fold toggle: za
    nmap <leader>f0 :set foldlevel=0<CR>
    nmap <leader>f1 :set foldlevel=1<CR>
    nmap <leader>f2 :set foldlevel=2<CR>
    nmap <leader>f3 :set foldlevel=3<CR>
    nmap <leader>f4 :set foldlevel=4<CR>
    nmap <leader>f5 :set foldlevel=5<CR>
    nmap <leader>f6 :set foldlevel=6<CR>
    nmap <leader>f7 :set foldlevel=7<CR>
    nmap <leader>f8 :set foldlevel=8<CR>
    nmap <leader>f9 :set foldlevel=9<CR>

    " }}}
    " CNTRL-key                 {{{
    " =======================

    " CTRL-S for saving, also in Insert mode
    "noremap  <C-S>        :update<CR>
    "vnoremap <C-S>    <C-C>:update<CR>
    "inoremap <C-S>    <C-O>:update<CR>

    " CTRL-A is Select all
    "noremap <C-A> gggH<C-O>G
    "inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
    "cnoremap <C-A> <C-C>gggH<C-O>G
    "onoremap <C-A> <C-C>gggH<C-O>G
    "snoremap <C-A> <C-C>gggH<C-O>G
    "xnoremap <C-A> <C-C>ggVG

    " Omni completion: <C-n>
    " Complete whole filenames/lines with a quicker shortcut key in insert mode
    imap <C-F> <C-X><C-F>
    imap <C-L> <C-X><C-L>

    " }}}

" }}}
" Buffers      {{{
" ================
    " Tip:
    "     :e!       ignore changes, restore original file
    "     :bd  [n]  buf del [number n]
    "     :bd! [n]  buf del, discard changes
    "     <C-^>     switch to alternate file

    set hidden                      " hide buffer instead of closing
    if version >= 703               " New in 7.3 !
        set autochdir               " always switch to the current file directory
    endif

    " new buffer            {{{
    " Ref: http://technotales.wordpress.com/2010/04/29/vim-splits-a-guide-to-doing-exactly-what-you-want/
    " nmap <leader>b<left>   :leftabove  vnew<CR>
    " nmap <leader>b<right>  :rightbelow vnew<CR>
    " nmap <leader>b<up>     :leftabove   new<CR>
    " nmap <leader>b<down>   :rightbelow  new<CR>
    " new buffer at top 'x'
    " nmap <leader>bt<left>  :topleft    vnew<CR>
    " nmap <leader>bt<right> :botright   vnew<CR>
    " nmap <leader>bt<up>    :topleft     new<CR>
    " nmap <leader>bt<down>  :botright    new<CR>
    "}}}
    " new buffer v2         {{{
    nmap <leader>bh   :leftabove   vnew<CR>
    nmap <leader>bl   :rightbelow  vnew<CR>
    nmap <leader>bk   :leftabove    new<CR>
    nmap <leader>bj   :rightbelow   new<CR>
    nmap <leader>bth  :topleft     vnew<CR>
    nmap <leader>btl  :botright    vnew<CR>
    nmap <leader>btk  :topleft      new<CR>
    nmap <leader>btj  :botright     new<CR>
    "}}}

" }}}
" Windows      {{{
" ================

    set splitbelow          " sb: split new window below current window
    set splitright          " spr: split new window to the right
    set noequalalways       " ea: resize all windows to same size to fit a new one

    nmap <leader>o   :only <CR>
    nmap <leader>sb  :set scrollbind<CR>
    nmap <leader>nsb :set noscrollbind<CR>

    " split: set equal size
    nmap <leader>sp= <C-W>=

    " Tip:
    " CTRL-W =   : equal all windows sizes
    " CTRL-W x   : swap split up/down
    "
    " :split #   : open alternate buf down
    " :vsplit #  : open alternate buf right
    "
    " sf[ind] /work/*/dev
    " sf[ind] /work/**/dev

    " Shortcut: move cursor to window   {{{
    map <C-J> <C-W>j
    map <C-K> <C-W>k
    map <C-H> <C-W>h
    map <C-L> <C-W>l

    " Look MA! No arrow keys in Vim!!!
    " map <down>  <C-W>j
    " map <up>    <C-W>k
    " map <left>  <C-W>h
    " map <right> <C-W>l
    "}}}
    " Shortcut: move split window       {{{
    nmap <leader>spJ <C-W>J
    nmap <leader>spK <C-W>K
    nmap <leader>spH <C-W>H
    nmap <leader>spL <C-W>L
    "}}}
    " New split                         {{{

    nmap <leader>sp   :split<CR>
    nmap <leader>vsp  :vsplit<CR>

    " Ref: http://technotales.wordpress.com/2010/04/29/vim-splits-a-guide-to-doing-exactly-what-you-want/
    nmap <leader>sp<left>   :leftabove  vsplit<CR>
    nmap <leader>sp<right>  :rightbelow vsplit<CR>
    nmap <leader>sp<up>     :leftabove  split<CR>
    nmap <leader>sp<down>   :rightbelow split<CR>

    " new split, v2
    nmap <leader>sph        :leftabove  vsplit<CR>
    nmap <leader>spl        :rightbelow vsplit<CR>
    nmap <leader>spk        :leftabove  split<CR>
    nmap <leader>spj        :rightbelow split<CR>

    "}}}

" }}}
" Windows Tabs {{{
" ================
    " Tip: :tabs
    "      :tabfirst
    "      :tablast
    "      :tabonly
    "      :tabf[ind]

    " split buf to new tab
    map <leader>ts :tab split<CR>
    " move buf to new tab
    map <leader>tm <C-W>T
    " open file under cursor to new tab: /etc/hosts
    map <leader>tf <C-W>gf

" }}}
" VimCode      {{{
" ================

    " http://vimcasts.org/episodes/tidying-whitespace/"{{{
    function! Preserve(command)
        " preparation: save last search, and cursor position.
        let _s=@/
        let l = line(".")
        let c = col(".")
        " do the business:
        execute a:command
        " clean up: restore previous search history, and cursor position
        let @/=_s
        call cursor(l, c)
    endfunction
    "}}}
    " Set font according to system"{{{
    "   Ref: http://amix.dk/vim/vimrc.html
    " if MySys() == "mac"
    "     set gfn=Menlo:h14
    "     set shell=/bin/bash
    " elseif MySys() == "windows"
    "     set gfn=Bitstream\ Vera\ Sans\ Mono:h10
    " elseif MySys() == "linux"
    "     set gfn=Monospace\ 10
    "     set shell=/bin/bash
    " endif
    "}}}
    " Terminal  "{{{
    " Terminal has 256 colors
    " if &t_Co >= 256 || has("gui_running")
    "     colorscheme mustang
    " endif

    " Terminal has colors
    " if &t_Co > 2 || has("gui_running")
    "     syntax on
    " endif
    "}}}
    " Lorem Ipsum "{{{
    " define :Lorem command to dump in a paragraph of lorem ipsum
    " by Willa! http://github.com/willian/willvim/tree/master
    " command! -nargs=0 Lorem :normal iLorem ipsum dolor sit amet, consectetur
    "         \ adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore
    "         \ magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
    "         \ ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
    "         \ irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
    "         \ fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
    "         \ proident, sunt in culpa qui officia deserunt mollit anim id est
    "         \ laborum
    "}}}
    " Ref: https://github.com/sjbach/env/blob/master/dotfiles/vimrc"{{{
    " " Indent XML readably
    " function! DoPrettyXML()
    "     1,$!xmllint --format --recover -
    " endfunction
    " command! PrettyXML call DoPrettyXML()
    "}}}
    " Ref: http://www.pixelbeat.org/settings/.vimrc"{{{
    " To create new file securely do: vim new.file.txt.gpg
    " Your private key used to decrypt the text before viewing should
    " be protected by a passphrase. Alternatively one could use
    " a passphrase directly with symmetric encryption in the gpg commands below.
    " au BufNewFile,BufReadPre *.gpg :set secure viminfo= noswapfile nobackup nowritebackup history=0 binary
    " au BufReadPost *.gpg :%!gpg -d 2>/dev/null
    " au BufWritePre *.gpg :%!gpg -e -r 'P@draigBrady.com' 2>/dev/null
    " au BufWritePost *.gpg u
    "}}}
    " Markdown Preview in Browser"{{{
    " Ref: http://mathias-biilmann.net/2009/1/markdown-preview-in-vim
        " function! PreviewMKD()
        "     ruby << EOF
        "     require 'rubygems'
        "     require 'bluecloth'
        "     t = ""
        "     VIM::Buffer.current.count.times {|i| t += "#{VIM::Buffer.current[i + 1]}\n"}
        "     html_file = VIM::Buffer.current.name.gsub(/.(md|mkd)$/, '.html')
        "     if html_file == VIM::Buffer.current.name
        "         print "Error! - This file extension is not supported for Markdown previews"
        "     end
        "     File.open(html_file, 'w') do |f|
        "         f.write(BlueCloth.new(t).to_html)
        "     end
        "     system("open #{html_file}")
        "     EOF
        " endfunction
        " map <Leader>p :call PreviewMKD()<CR>"
        " }}}

    " :0 put =range(1,15)
    " :for in in range(1,15) | put ='192.168.1.'.i | endfor

" }}}
" FileTypes    {{{
" ================

    " all files                 {{{
        " Strip white space
        autocmd BufWritePre * :call Preserve("%s/\\s\\+$//e")

        " Come back to last position
        autocmd BufReadPost *   if line("'\"") > 0
                            \ && line("'\"") <= line("$") |
                            \    exe "normal! g'\""       |
                            \ endif

        " no extension: treat as txt file
        " autocmd BufRead,BufNewFile *  setfiletype txt

    " }}}
    " Text                      {{{
        autocmd BufNewFile,BufRead *.txt setlocal filetype=txt
        autocmd FileType             txt setlocal tw=78 cc=+1,+2,+3,+4,+5 ts=4 sts=4 sw=4 et
        autocmd FileType             txt setlocal fo=cqrnl2
        "                                            ||||||
        "                                            |||||+-- indent as 2nd line of paragraph
        "                                            ||||+--- long line do not break in insert mod
        "                                            |||+---- recognize numbered lists
        "                                            ||+----- insert comment leader after <Enter> in Insert mode
        "                                            |+------ allow formatting using gq
        "                                            +------- auto-wrap comments
        "
        " formatoptions=tcroqn2l
        " help fo-table
    " }}}
    " Notes                     {{{
        autocmd BufNewFile,BufRead *.notes     setlocal filetype=notes
        autocmd BufNewFile,BufRead *.notes.txt setlocal filetype=notes
    " }}}
    " LogFiles                  {{{
        " goto end of file
        autocmd BufReadPost  *.log      normal G
    " }}}
    " HTML/XML                  {{{
    " Ref: http://www.pixelbeat.org/settings/.vimrc
    " augroup html
    "     au!
    "     "Disable parenthesis matching as it's way too slow
    "     au BufRead *.html,*.xml NoMatchParen
    " augroup END
    " }}}
    " Mail                      {{{
        autocmd BufRead     letter*     set filetype=mail
        autocmd Filetype    mail        set fo-=l autoindent spell
    " }}}
    " Makefile                  {{{
        autocmd BufRead     [Mm]akefile*    setlocal filetype=make
        autocmd FileType    automake,make   setlocal ts=8 sts=0 sw=8 noet nosta list
    " }}}
    " Ruby                      {{{
        autocmd BufNewFile,BufRead *.rb              setlocal filetype=ruby
        autocmd BufNewFile,BufRead Rakefile,Capfile  setlocal filetype=ruby
        autocmd FileType           ruby  setlocal ts=2 sts=2 sw=2 et nowrap
    " }}}
    " SQL*Plus                  {{{
    " autocmd BufNewFile,BufRead *sql       set filetype=plsql
        " http://www.oracledba.ru/notes_vim_en.html
    " autocmd BufNewFile,BufRead afiedt.buf set filetype=plsql
        "
    " autocmd BufRead *sql set makeprg=~/bin/sql_compile_vim.sh\ %\ scott/tiger@orcl
    " autocmd BufRead *sql set errorformat=%E%l/%c%m,%C%m,%Z
    " }}}
    " Snipmate Snippets         {{{
        autocmd BufNewFile,BufRead *.snippet  setf snippet
        autocmd BufNewFile,BufRead *.snippets setf snippet
        autocmd FileType             snippet  set ts=4 sts=4 sw=4 noet list
        autocmd FileType             snippet  set foldmethod=expr foldlevel=0
        autocmd FileType             snippet  set foldexpr=getline(v:lnum)=~'^\\s*$'&&getline(v:lnum+1)=~'\\S'?'<1':1
    " }}}
    " Vim                       {{{
    autocmd FileType             vim      set foldmethod=marker foldmarker={,} foldlevel=0
    " }}}
    " git.git/contrib           {{{
        autocmd BufNewFile,BufRead COMMIT_EDITMSG set filetype=gitcommit
    " }}}

" }}}
" Plugins      {{{
" ================
    " Tip:
    "     scriptnames     " List all sourced scripts

    " align, alignmaps          {{{
        let g:DrChipTopLvlMenu     = "Plugin."
        let g:alignmaps_euronumber = 1
    " }}}
    " acp/autocomplpop          {{{
        let g:acp_enableAtStartup        = 1
        let g:acp_mappingDriven          = 0
        let g:acp_ignorecaseOption       = 1
        let g:acp_behaviorKeywordLength  = 2
        let g:acp_behaviorFileLength     = 0

        let g:acp_behavior = { 'repeat': 1}

        map <leader>ae :AcpEnable <CR>
        map <leader>ad :AcpDisable <CR>
        " map <leader>al :AcpLock <CR>
        " map <leader>au :AcpUnlock <CR>
    " }}}
    " autoclose.vim             {{{
        " Turn it off:
        " let g:autoclose_loaded = 1
    " }}}
    " Bash-support              {{{
        " Turn it off:
        let g:BASH_Version = 'OFF'

        let g:BASH_Root = 'B&ash.'         " original
        let g:BASH_Root = '&Plugin.B&ash.' " mine.
    "let g:BASH_MapLeader               '\'
    "let g:BASH_Errorformat             '%f:\ line\ %l:\ %m'

        if ! len(glob( $HOME.'/.vim/bundle/bash-support/' ))
            let g:BASH_Support_Root_Dir        = $HOME.'/.vim/bundle/'
        endif

        " let g:BASH_Support_Root_Dir        = '/codework/bash/'
        if ! len(glob("/codework/bash/"))
            let g:BASH_GlobalTemplateFile      = '/codework/bash/templates'
            let g:BASH_LocalTemplateFile       = '/codework/bash/templates'
            let g:BASH_CodeSnippets            = '/codework/bash/snippets'
        "let g:BASH_Dictionary_File         = '/codework/bash/bash.dict.txt'
        endif

    " }}}
    " bufexplorer               {{{
        " ,be / ,bv / ,bs
        let g:bufExplorerReverseSort     = 0
        let g:bufExplorerShowUnlisted    = 1    " Do not show unlisted buffers.
        let g:bufExplorerSortBy          ='name'
        let g:bufExplorerShowDirectories = 1    " Show directories.
        let g:bufExplorerFindActive      = 0    " Do not go to active window.
        let g:bufExplorerShowDirectories = 0    " Don't show directories.
        let g:bufExplorerShowUnlisted    = 1    " Show unlisted buffers.
        let g:bufExplorerSplitBelow      = 1    " Split new window below current.
        let g:bufExplorerSplitRight      = 1    " Split right.
    " }}}
    " capslock.vim              {{{
        " Turn it off:
        " let g:loaded_capslock = 1
    " }}}
    " command-t                 {{{
    nmap <silent> <Leader>t :CommandT<CR>

    let g:CommandTMaxFiles=20000
    let g:CommandTMaxHeigh=25
    " }}}
    " dbext                     {{{
    " }}}
    " endwise.vim               {{{
        " Turn it off:
        " let g:loaded_endwise = 1
    " }}}
    " enhancedjumps.vim         {{{
        " Turn it off:
        " let g:loaded_EnhancedJumps = 1

        " msg timout: 2s (2000 ms)
        let g:stopFirstAndNotifyTimeoutLen = 2000
    " }}}
    " fugitive.vim              {{{
        " Turn it off:
        " let g:loaded_fugitive = 1
    " }}}
    " FuzzyFinder               {{{

        let g:fuf_modesDisable = []
        let g:fuf_mrufile_maxItem = 400
        let g:fuf_mrucmd_maxItem = 400

        let g:fuf_fuzzyRefining = 1

        map  <leader>fb   :FufBuffer          <CR>
        map  <leader>ff   :FufFile            <CR>
        map  <leader>fd   :FufDir             <CR>
        map  <leader>fl   :FufLine            <CR>

        map  <leader>fmc  :FufMruCmd          <CR>
        map  <leader>fmf  :FufMruFile         <CR>

        map  <leader>fh   :FufHelp            <CR>
        map  <leader>fj   :FufJumpList        <CR>

        " map  <leader>fbd  :FufBookmarkDir     <CR>
        " map  <leader>fbf  :FufBookmarkFile    <CR>
        " map  <leader>fbm  :FufBookmark        <CR>
        "
        " map  <leader>fcf  :FufCoverageFile    <CR>
        " map  <leader>fcl  :FufChangeList      <CR>
        " map  <leader>fq   :FufQuickfix        <CR>
        "
        " map  <leader>fbt  :FufBufferTag       <CR>
        " map  <leader>ft   :FufTag             <CR>
        " map  <leader>ftf  :FufTaggedFile      <CR>

        " nnoremap <silent> sj     :FufBuffer<CR>
        " nnoremap <silent> sk     :FufFileWithCurrentBufferDir<CR>
        " nnoremap <silent> sK     :FufFileWithFullCwd<CR>
        " nnoremap <silent> s<C-k> :FufFile<CR>
        " nnoremap <silent> sl     :FufCoverageFileChange<CR>
        " nnoremap <silent> sL     :FufCoverageFileChange<CR>
        " nnoremap <silent> s<C-l> :FufCoverageFileRegister<CR>
        " nnoremap <silent> sd     :FufDirWithCurrentBufferDir<CR>
        " nnoremap <silent> sD     :FufDirWithFullCwd<CR>
        " nnoremap <silent> s<C-d> :FufDir<CR>
        " nnoremap <silent> sn     :FufMruFile<CR>
        " nnoremap <silent> sN     :FufMruFileInCwd<CR>
        " nnoremap <silent> sm     :FufMruCmd<CR>
        " nnoremap <silent> su     :FufBookmarkFile<CR>
        " nnoremap <silent> s<C-u> :FufBookmarkFileAdd<CR>
        " vnoremap <silent> s<C-u> :FufBookmarkFileAddAsSelectedText<CR>
        " nnoremap <silent> si     :FufBookmarkDir<CR>
        " nnoremap <silent> s<C-i> :FufBookmarkDirAdd<CR>
        " nnoremap <silent> st     :FufTag<CR>
        " nnoremap <silent> sT     :FufTag!<CR>
        " nnoremap <silent> s<C-]> :FufTagWithCursorWord!<CR>
        " nnoremap <silent> s,     :FufBufferTag<CR>
        " nnoremap <silent> s<     :FufBufferTag!<CR>
        " vnoremap <silent> s,     :FufBufferTagWithSelectedText!<CR>
        " vnoremap <silent> s<     :FufBufferTagWithSelectedText<CR>
        " nnoremap <silent> sxxxw  :FufBufferTagWithCursorWord!<CR>
        " nnoremap <silent> s.     :FufBufferTagAll<CR>
        " nnoremap <silent> s>     :FufBufferTagAll!<CR>
        " vnoremap <silent> s.     :FufBufferTagAllWithSelectedText!<CR>
        " vnoremap <silent> s>     :FufBufferTagAllWithSelectedText<CR>
        " nnoremap <silent> s]     :FufBufferTagAllWithCursorWord!<CR>
        " nnoremap <silent> sg     :FufTaggedFile<CR>
        " nnoremap <silent> sG     :FufTaggedFile!<CR>
        " nnoremap <silent> so     :FufJumpList<CR>
        " nnoremap <silent> sp     :FufChangeList<CR>
        " nnoremap <silent> sq     :FufQuickfix<CR>
        " nnoremap <silent> sy     :FufLine<CR>
        " nnoremap <silent> sh     :FufHelp<CR>
        " nnoremap <silent> se     :FufEditDataFile<CR>
        " nnoremap <silent> sr     :FufRenewCache<CR>
    " }}}
    " increment.vim             {{{
    " }}}
    " LargeFile                 {{{
        " in megabytes - :Large/:Unlarge
        let g:LargeFile= 200
    " }}}
    " mark.vim                  {{{
        " Turn it off:
        " let g:loaded_mark = 1
    " }}}
    " marks browser.vim         {{{
        " Turn it off:
        " let loaded_marksbrowser = 1

        map <leader>mb :MarksBrowser<CR><CR>

        " Do not close after selecting a mark
        let marksCloseWhenSelected = 0

    " }}}
    " marks_corey.vim           {{{
        " Turn it off:
        " let g:loaded_marks_corey = 1
    " }}}
    " matchit.vim               {{{
        " Turn it off:
        " let loaded_matchit = 1

        " Using as provided by vim distro
        " runtime macros/matchit.vim

    " }}}
    " molokai.vim               {{{
        " color option
        let g:molokai_original = 1
    " }}}
    " NerdCommenter             {{{
        " Turn it off:
        " let loaded_nerd_comments=1

        let NERDCreateDefaultMappings = 1
        let NERDRemoveExtraSpaces = 1
        let NERDSpaceDelims = 1
        let NERDMenuMode = 0
    " }}}
    " NerdTree                  {{{
        " Turn it off:
        " let loaded_nerd_tree=1

        let NERDTreeCaseSensitiveSort = 1
        let NERDTreeChDirMode         = 0
        let NERDTreeIgnore            = ['\.[ao]$','\.sw?$','\.DS_Store','\.svn','\.CVS','\.git']
        let NERDTreeMouseMode         = 2
        let NERDTreeShowLineNumbers   = 0
        let NERDTreeWinSize           = 35
        let NERDTreeHijackNetrw       = 1

        map <leader>d  :NERDTreeToggle <CR> " Dir tree
        map <leader>dd :NERDTreeMirror <CR> " Dir tree
    " }}}
    " openssl (pwdsafe)         {{{
        " ms: 15000 - 15s
        "     30000 - 20s
        "    300000 -  5m
        "let g:openssl_timeout = 301000
    " }}}
    " Perl-support              {{{
        " Turn it off:
        let g:Perl_Version = 'OFF'

        let g:Perl_Root = '&Perl.'          " original
        let g:Perl_Root = '&Plugin.&Perl.'  " mine.
    "let g:Perl_Printheader             = "%<%f%h%m%<  %=%{strftime('%x %X')}     Page %N"
    "let g:Perl_PerlcriticSeverity      = 5
    "let g:Perl_PerlcriticVerbosity     = 5
    "let g:Perl_PerlcriticOptions       = ""
    "let g:Perl_PerlRegexSubstitution   = '$+'
    "let g:Perl_MapLeader               = '\'

        if ! len(glob( $HOME.'/.vim/bundle/perl-support/' ))
            let g:Perl_Support_Root_Dir        = $HOME.'/.vim/bundle/perl-support'
        endif

        if ! len(glob("/codework/perl/"))
            let g:Perl_GlobalTemplateFile      = '/codework/perl/templates.pl'
            let g:Perl_LocalTemplateFile       = '/codework/perl/templates.pl'
            let g:Perl_CodeSnippets            = '/codework/perl/snippets.pl'
            let g:Perl_Dictionary_File         = '/codework/perl/perl.dict.txt'
            let g:Perl_PerlModuleList          = '/codework/perl/perl.list.txt'
            let g:Perl_PerlModuleListGenerator = '/codework/perl/perl.list.txt'
        endif
    " }}}
    " project.vim               {{{
        " Turn it off:
        " let loaded_project = 1

        let g:proj_window_width = 40
        let g:proj_window_increment = 20

        " Default: 'imst'
        let g:proj_flags = 'imstn'

        nmap <silent> <Leader>p :Project<CR>
    " }}}
    " rails.vim                 {{{
        " Turn it off:
        " let g:loaded_rails = 1
        let g:rails_menu = 1
        let g:rails_history_size = 9
    " }}}
    " repeat.vim                {{{
        " Turn it off:
        " let g:loaded_repeat = 1
    " }}}
    " searchcomplete            {{{
        " Turn it off:
        " let loaded_search_complete = 1
    " }}}
    " showmarks                 {{{
        " Turn it off:
        " let let loaded_showmarks = 1

        hi ShowMarksHLl guifg=white guibg=black    gui=bold ctermfg=white ctermbg=black    cterm=bold
        hi ShowMarksHLu guifg=white guibg=darkblue gui=bold ctermfg=white ctermbg=darkblue cterm=bold
        hi ShowMarksHLo guifg=gray  guibg=black    gui=bold ctermfg=gray  ctermbg=black    cterm=bold
        hi ShowMarksHLm guifg=white guibg=gray     gui=bold ctermfg=white ctermbg=gray     cterm=bold

       " map <leader>mt :ShowMarksToggle    <CR>
       " map <leader>mm :ShowMarksPlaceMark <CR>
       " map <leader>md :ShowMarksClearMark <CR>
       " map <leader>ma :ShowMarksClearAll  <CR>

    " }}}
    " snipmate-snippets         {{{
        " Turn it off:
        " let loaded_snips = 1

        let g:snips_author = 'Marcus Vinicius Fereira            ferreira.mv[ at ].gmail.com'

        nmap <leader>ras  :exec ReloadAllSnippets()<CR>

        " Tip: i_CTRL-R_<Tab>
        "      popupmenu of all snippets available
        "      for this filetype

        " Space+tab: snip list
"       inoremap <silent> <space><tab> <c-r>=ShowAvailableSnips()<cr>

        " acp+snip-mate (from help:acp.txt): plugin/snipmate.vim
        " fun! GetSnipsInCurrentScope()
        "     let snips = {}
        "     for scope in [bufnr('%')] + split(&ft, '\.') + ['_']
        "         call extend(snips, get(s:snippets, scope, {}), 'keep')
        "         call extend(snips, get(s:multi_snips, scope, {}), 'keep')
        "     endfor
        "     return snips
        " endf
"       let g:acp_behaviorSnipmateLength = 5

    " }}}
    " speeddating.vim           {{{
        " Turn it off:
        " let g:loaded_speeddating      = 1
        " 0: maps to <C-A>/<C-X>
        let g:speeddating_no_mappings = 0
    " }}}
    " SQLUtilities              {{{
        " Turn it off:
        " let g:loaded_sqlutilities = 1

        let g:sqlutil_align_where = 1
        let g:sqlutil_align_comma = 1
        let g:sqlutil_align_first_word = 1
        let g:sqlutil_align_keyword_right = 1
        let g:sqlutil_keyword_case = '\U'

        " 0: do not create maps
        let g:sqlutil_load_default_maps = 0

        vmap <leader>sf        <Plug>SQLU_Formatter<CR>
        " nmap <leader>scl       <Plug>SQLU_CreateColumnList<CR>
        " nmap <leader>scd       <Plug>SQLU_GetColumnDef<CR>
        " nmap <leader>scdt      <Plug>SQLU_GetColumnDataType<CR>
        " nmap <leader>scp       <Plug>SQLU_CreateProcedure<CR>
    " }}}
    " StatusLineHighlight       {{{
        " Turn it off:
        " let g:loaded_StatusLineHighlight = 1

        " My buffers
        highlight StatusLineModified       guifg=#CCCCCC    guibg=DarkRed   gui=bold ctermfg=gray    ctermbg=DarkRed   cterm=NONE
        highlight StatusLineModifiedNC     guifg=DarkRed    guibg=gray      gui=bold ctermfg=DarkRed ctermbg=gray      cterm=NONE

        " Help
        highlight StatusLineSpecial        guifg=lightgreen guibg=darkgreen gui=bold ctermfg=yellow  ctermbg=darkgreen cterm=NONE
        highlight StatusLineSpecialNC      guifg=lightgreen guibg=darkgreen gui=bold ctermfg=yellow  ctermbg=darkgreen cterm=NONE

        " :pedit/psearch/ptag
        highlight StatusLinePreview        guifg=white      guibg=magenta   gui=bold ctermfg=white   ctermbg=magenta   cterm=NONE
        highlight StatusLinePreviewNC      guifg=black      guibg=magenta   gui=bold ctermfg=black   ctermbg=magenta   cterm=NONE

        " others...
        highlight StatusLineReadonly       guifg=white      guibg=darkgreen gui=bold ctermfg=white   ctermbg=darkgreen cterm=NONE
        highlight StatusLineReadonlyNC     guifg=white      guibg=darkgreen gui=bold ctermfg=white   ctermbg=darkgreen cterm=NONE
        highlight StatusLineUnmodifiable   guifg=green      guibg=darkgreen gui=bold ctermfg=green   ctermbg=darkgreen cterm=NONE
        highlight StatusLineUnmodifiableNC guifg=green      guibg=darkgreen gui=bold ctermfg=green   ctermbg=darkgreen cterm=NONE

    " }}}
    " surround.vim              {{{
        " Turn it off:
        " let g:loaded_surround = 1
    " }}}
    " taglist                   {{{
        " let loaded_taglist = 1 " 0: activate / 1: do not load
        " let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
        " let Tlist_File_Fold_Auto_Close = 1
        " let Tlist_Show_Menu = 1

        " map <leader>t   :TlistToggle     <CR>
        " map <leader>ts  :TlistSessionSave ~/.tlistsession.vim.tag <CR>
        " map <leader>tl  :TlistSessionLoad ~/.tlistsession.vim.tag <CR>
    " }}}
    " textformat.vim            {{{
        " Turn it off:
        " let g:loaded_textformat = 1
    " }}}
    " tlib.vim                  {{{
        " Turn it off:
        " let loaded_tlib = 1

        " My corrections
        autocmd FileType  tlibInputList setlocal nonu cc=+1,+2,+3,+4,+5 cursorcolumn
        highlight  InputlListCursor guifg=#CCCCCC  guibg=darkblue  gui=italic  ctermfg=white  ctermbg=darkblue  cterm=NONE

    " }}}
    " tmarks.vim                {{{
        " Turn it off:
        " let loaded_tmarks = 1

       map <leader>tm :TMarks    <CR>

    " }}}
    " tregisters.vim            {{{
        " Turn it off:
        " let loaded_tregisters = 1

       map <leader>tr :TRegisters    <CR>

    " }}}
    " unimpaired.vim            {{{
        " Turn it off:
        " let g:loaded_unimpaired = 1
    " }}}
    " Zen-Coding                {{{
        " Turn it off:
        " let g:loaded_zencoding_vim = 1

        let g:use_zen_complete_tag = 1
        let g:user_zen_leader_key  = '<c-y>'

        " let g:user_zen_balancetagoutward_key = 'ta'
        " let g:user_zen_balancetaginward_key  = 'ti'
        " let g:user_zen_prev_key              = 'p'
        " let g:user_zen_removetag_key         = 'd'

        " Default Mappings
        " let g:user_zen_expandabbr_key         [ , ]
        " let g:user_zen_expandword_key         [ , ]
        " let g:user_zen_balancetagoutward_key  [ D ]
        " let g:user_zen_balancetaginward_key   [ d ]
        " let g:user_zen_next_key               [ n ]
        " let g:user_zen_prev_key               [ N ]
        " let g:user_zen_imagesize_key          [ i ]
        " let g:user_zen_togglecomment_key      [ / ]
        " let g:user_zen_splitjointag_key       [ j ]
        " let g:user_zen_removetag_key          [ k ]
        " let g:user_zen_anchorizeurl_key       [ a ]
        " let g:user_zen_anchorizesummary_key   [ A ]

        let g:user_zen_settings = {
            \  'html' : {
            \    'filters' : 'html, e',
            \    'indentation' : '    '
            \  },
            \  'css' : {
            \    'filters' : 'fc',
            \    'indentation' : '  '
            \  },
            \  'xml' : {
            \    'extends' : 'html',
            \  },
            \  'haml' : {
            \    'extends' : 'html',
            \  },
            \  'php' : {
            \    'extends' : 'html',
            \    'filters' : 'html,c',
            \    'indentation' : '    '
            \  },
            \}
    " }}}
    " RainbowPlugin             {{{
        " Turn it off:
        " let g:loaded_Rainbow = 1
    " }}}

" }}}
" Corrections  {{{
" ================

    set paste               " terminal: do the right thing when executing paste
    set verbose=0           " Debug
    if version >= 703       " Vim 7.x specific colors
        hi    CursorColumn guifg=NONE  guibg=black gui=NONE ctermfg=NONE  ctermbg=NONE  cterm=BOLD
        hi    ColorColumn  guifg=NONE  guibg=black gui=NONE ctermfg=NONE  ctermbg=NONE  cterm=BOLD
        hi    SignColumn   guifg=white guibg=black gui=bold ctermfg=white ctermbg=black cterm=bold
    endif

" }}}

" vim: set foldmarker={{{,}}} foldlevel=1 nospell:

