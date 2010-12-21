" Header and Notes {
"
"   vim: set foldenable foldmarker={,} foldlevel=0 nospell:
"   vi/vim: dot.vimrc
"   mvf: ferreira.mv[ at ]gmail.com
"   based on http://vi-improved.org/vimrc.php
"
" }

set nocompatible

" Pathogen {
    filetype off

    " Use pathogen to easily modify the runtime path to include all
    " plugins under the ~/.vim/bundle directory
    call pathogen#helptags()
    call pathogen#runtime_append_all_bundles()
" }

" General {
    syntax on
    filetype plugin indent on

    " vi compatible options {
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
    " }

    set nobackup                    " [donot] make backup files
    set backupdir=/tmp              " where to put backup files

    set noswapfile                  " do not use swap files (brave mode on!)
    set directory=/tmp              " directory to place swap files in

    set clipboard+=unnamed          " yy, D, p: share OS clipboard
    set encoding=utf-8 nobomb       " BOM often causes trouble
    set fileformats=unix,dos,mac    " support all three, in this order
    set history=300                 " history size
    set modeline                    " modeline on
  " set timeoutlen=5000             " time in ms to complete a mapped key combination
    set writeany                    " write on readonly files

    " New in 7.3 !
    " if version >= 703
    "     set autochdir               " always switch to the current file directory
    " endif
    if has('persistent_undo')
        set undofile                " keep a permanent undofile (vide :wundo/:rundo)
        set undodir=/tmp
        " if ! isdirectory(&undodir)
        "     call mkdir(&undodir, 'p')
        " endif
    endif

    set linebreak                   " when wrapping, uses chars listed in breakt
    set breakat=\ ^I!@*-+;:,./?     " when wrapping, break at these characters
    set showbreak=…                 " what to show at the start of a wrapped line

    set iskeyword+=48-57,192-255
    set iskeyword+=_,$,@,%,#        " none of these are word dividers

    set showcmd                 " show command line
    set wildmenu                " turn on command line completion wild style
    set wildmode=list:longest   " turn on wild mode huge list
    set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png,*~,*.lo
                                " ignore these list file extensions

    set grepprg=ack
    set grepformat=%f:%l:%m

    " what to save via :mksession {
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
    " }
" }

" Mappings {
    " Tip: D  : command key
    "      D-S: command+shift key

    let mapleader=","

    " http://items.sjbach.com/319/configuring-vim-right
    " scroll viewpoint by 'n' lines
    nnoremap <C-j> 5<C-e>
    nnoremap <C-k> 5<C-y>

    " Increase/Decrease: <C-A>/<C-X>
    " Omni completion: <C-n>
    " Complete whole filenames/lines with a quicker shortcut key in insert mode
    " imap <C-F> <C-X><C-F>
    " imap <C-L> <C-X><C-L>

    " space / shift-space scroll in normal mode
    " noremap <S-space> <C-b>
    " noremap <space>   <C-f>

    " \w => :w
    nmap \ :

    " Quick yanking to the end of the line
    nmap Y y$

    " K = inverted J: join line up
    map K ddpkJ

    " row up/down if wrap active
    " http://nvie.com/posts/how-i-boosted-my-vim/
    nnoremap j gj
    nnoremap k gk

    " CTRL-K:  delete so the end of line
    map  <C-K> D
    " DOES NOT WORK
    " imap <C-K> <ESC>D

     " Yank/paste to the OS clipboard with ,y and ,p
    " nmap <leader>y "+y
    " nmap <leader>Y "+yy
    " nmap <leader>p "+p
    " nmap <leader>P "+P

    " Quickly get out of insert mode without your fingers having to leave the
    " home row (either use 'jj' or 'jk')
    " inoremap jj <Esc>
    " inoremap jk <Esc>

    " edit files
    nmap <leader>ev :e $MYVIMRC<CR>
    nmap <leader>eg :e $MYGVIMRC<CR>

    " fold
    " Tip: fold toggle: za
    nmap <leader>fc :foldclose<CR>
    nmap <leader>fo :foldopen<CR>

    nmap <leader>f0 :set foldlevel=0<CR>
    nmap <leader>f1 :set foldlevel=1<CR>
    nmap <leader>f2 :set foldlevel=2<CR>
    nmap <leader>f3 :set foldlevel=3<CR>
    nmap <leader>f4 :set foldlevel=3<CR>
    nmap <leader>f5 :set foldlevel=3<CR>
    nmap <leader>f6 :set foldlevel=3<CR>
    nmap <leader>f7 :set foldlevel=3<CR>
    nmap <leader>f8 :set foldlevel=3<CR>
    nmap <leader>f9 :set foldlevel=9<CR>

    " Identation {

    """ Normal mode:
    nmap <D-[> <<
    nmap <D-]> >>

    """ Visual mode - gv: keeps selection
    vnoremap > ><CR>gv
    vnoremap < <<CR>gv
    vmap <D-[> <gv
    vmap <D-]> >gv

    " }

    " Shortcuts
    nmap <leader>q  :q <CR>
    nmap <leader>q1 :q!<CR>
    nmap <leader>w  :w <CR>
    nmap <leader>wa :wa<CR>
    nmap <leader>wq :wq!<CR>
    nmap <leader>ww :w !sudo tee % >/dev/null
    nmap <leader>sa :browse confirm saveas<CR>

"   cmap w!! w !sudo tee % >/dev/null

    " linenumber on/off
    nmap <leader>nu  :set invnumber<CR>
    " relativenumber on/off
    nmap <leader>rnu :set invrnu   <CR>
    " set cursorcolumn/nocursorcolumn
    nmap <leader>cuc :set invcuc   <CR>
    " Highlight search on/off
    nmap <leader>h :set invhls<CR>
    " list invisibles on/off
    nmap <leader>l :set invlist  <CR>

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

    " Underline header
    map <leader>= yypVr=
    map <leader>- yypVr-

    " Thanks to Steve Losh for this liberating tip
    " See http://stevelosh.com/blog/2010/09/coming-home-to-vim
    " Perl Regex
    nnoremap / /\v
    vnoremap / /\v

    " <TAB> for matching brackets
    nnoremap <tab> %
    vnoremap <tab> %

    " Creating underline/overline headings for markup languages
    " Inspired by http://sphinx.pocoo.org/rest.html#sections
    "nnoremap <leader>1 yyPVr=jyypVr=
    "nnoremap <leader>2 yyPVr*jyypVr*
    "nnoremap <leader>3 yypVr=
    "nnoremap <leader>4 yypVr-
    "nnoremap <leader>5 yypVr^
    "nnoremap <leader>6 yypVr"

   " http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
    nmap <leader>cd :cd <C-R>=expand("%:p:h")<CR>

    " Command mode: path of the currently edited file
    " cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

    " Command line map
    cmap %/ <C-R>

    " dos2,nix
    nmap <leader>unix   :%s/\r$//     <CR>

   " rot all text
    nmap <leader>rot ggg?G

" }

" Commands {

    command! W  :w
    command! WW :browse confirm saveas
    command! WQ :wq
    command! Q  :q

    command! Rehash     source $MYVIMRC
    command! Rehashg    source $MYGVIMRC
    command! Helptags   helptags ~/.vim/doc

    command! Color      echo g:colors_name

    " start/stop sharing OS clipboard
    command! Clipon     set clipboard+=unnamed
    command! Clipoff    set clipboard-=unnamed

" }

" Vim-UI {
    set title           " set window name as titlestring
    " set titlestring=%F\ [%R%H%M%w]\ %{v:servername}
    " let &titlestring=expand("%:p")." - ".v:servername

    if has("gui_running")
        auto BufEnter * let &titlestring=expand("%:p")." - ".v:servername
    endif

    " set ruler           " show cursor line/col position
    " set rulerformat=[col:%c\ lin:%-7.(%l/%L%)]\ %P

    set number              " linenumber
    set numberwidth=5       " linenumber width
    "et relativenumber      " relative number

    set cursorline          " horizontal highlight
    set nocursorcolumn      " vertical highlight

    set virtualedit=block   " allow moving past end of line in block selection mode

    set nostartofline       " keep cursor in same column where moving up/down
    set scrolloff=3         " keep 3 lines scrolling up/down
    set sidescrolloff=10    " keep 10 lines scrolling left/right

    set report=0            " report all changes via ':' commands

    set winaltkeys=no       " wak: no ALT keys for menus

    set incsearch           " Highlight dynamically as they are typed.
    set nohlsearch          " Highlight search terms: off on start

    set errorbells          " Bells error messagens
    set visualbell          " no sound bells

    set nolist              " [no]list invisible chars
    set listchars=tab:▸\ ,trail:·,eol:¬,extends:>,precedes:<
    "             |       |       |     |         +-- line befor left margin: <
    "             |       |       |     +-- line beyond right margin: >
    "             |       |       +-- EOF: _
    "             |       +-- trailing spaces: ....
    "             +-- each tab: >----

    "et formatoptions=rq                    " default: tcq vide 'help fo-table'
    set formatoptions=cqrn
    "                 ||||
    "                 |||+-- recognize numbered lists
    "                 ||+--- insert comment leader after <Enter> in Insert mode
    "                 |+---- allow formatting using gq
    "                 +----- auto-wrap comments
" }

" GUI Settings {

    set bg=dark

    map <leader>c1 :colorscheme ir_black3<CR>
    map <leader>c2 :colorscheme torte    <CR>
    map <leader>c3 :colorscheme desert   <CR>
    map <leader>c0 :echo g:colors_name   <CR>

    " Terminal vim theme
    colorscheme torte

    " Gvim theme
    if has("gui_running")
        if filereadable(expand("~/.vim/colors/ir_black3.vim"))
        colorscheme ir_black3
        endif

        set nocursorcolumn
        set mouse=a
        set mousehide

        set guifont=Monaco:h12  " MacVim
        set guiheadroom=5       " nr of pixels subtracter from screen to fit GUI
        set tabpagemax=100      " tpm: max nro of tab windows
        set gtl=%t gtt=%F       " guitablabel/guitabtooltip

        set colorcolumn=+1,+2,+3,+4,+5
        set columns=178
        set lines=44
        set transp=4

        set browsedir=buffer    " open filebrowser on directory of curent buffer

        " Set font according to system
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

    endif

    " Terminal has 256 colors
    " if &t_Co >= 256 || has("gui_running")
    "     colorscheme mustang
    " endif

    " Terminal has colors
    " if &t_Co > 2 || has("gui_running")
    "     syntax on
    " endif

" }

" Buffers {
    " Tip:
    "     :e!       ignore changes, restore original file
    "     :bd  [n]  buf del [number n]
    "     :bd! [n]  buf del, discard changes
    "     <C-^>     switch to alternate file

    set hidden                  " hide buffer instead of closing
    "et nohidden                " close buffer always

    " new buffer
    " Ref: http://technotales.wordpress.com/2010/04/29/vim-splits-a-guide-to-doing-exactly-what-you-want/
    nmap <leader>b<left>   :leftabove  vnew<CR>
    nmap <leader>b<right>  :rightbelow vnew<CR>
    nmap <leader>b<up>     :leftabove   new<CR>
    nmap <leader>b<down>   :rightbelow  new<CR>

    " new buffer at top 'x'
    nmap <leader>bt<left>  :topleft    vnew<CR>
    nmap <leader>bt<right> :botright   vnew<CR>
    nmap <leader>bt<up>    :topleft     new<CR>
    nmap <leader>bt<down>  :botright    new<CR>

    " v2
    nmap <leader>bh   :leftabove   vnew<CR>
    nmap <leader>bl   :rightbelow  vnew<CR>
    nmap <leader>bk   :leftabove    new<CR>
    nmap <leader>bj   :rightbelow   new<CR>
    nmap <leader>bth  :topleft     vnew<CR>
    nmap <leader>btl  :botright    vnew<CR>
    nmap <leader>btk  :topleft      new<CR>
    nmap <leader>btj  :botright     new<CR>

" }

" Windows {

    set splitbelow          " sb: split new window below current window
    set splitright          " spr: split new window to the right
    set noequalalways       " ea: resize all windows to same size to fit a new one

    " Tip:
    " CTRL-W =   : equal all windows sizes
    " CTRL-W x   : swap split up/down
    "
    " :split #   : open alternate buf down
    " :vsplit #  : open alternate buf right
    "
    " sf[ind] /work/*/dev
    " sf[ind] /work/**/dev

    nmap <leader>o   :only <CR>
    nmap <leader>sb  :set scrollbind<CR>
    nmap <leader>nsb :set noscrollbind<CR>

    " Look MA! No arrow keys in Vim!!!
    map <down>  <C-W>j
    map <up>    <C-W>k
    map <left>  <C-W>h
    map <right> <C-W>l

    " Shortcut: move cursor
    map <C-J> <C-W>j
    map <C-K> <C-W>k
    map <C-H> <C-W>h
    map <C-L> <C-W>l

    " Shortcut: move split window to top L/R/U/D
    nmap <leader>spJ <C-W>J
    nmap <leader>spK <C-W>K
    nmap <leader>spH <C-W>H
    nmap <leader>spL <C-W>L

    " split: set equal size
    nmap <leader>sp= <C-W>=

    " new split
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

    " }

" Windows Tabs {
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

" }

" Status Line {
    " My status line
    " --------------
     set laststatus=2   " always show statusline

     set statusline=\                               " one blank

"    set statusline+=\ %f\                          " filename
"    set statusline+=%h%m%r                         " flags

     set statusline+=[
     set statusline+=%n:                            " buffer number
     set statusline+=%{strlen(&ft)?&ft:'none'}      " filetype
"    set statusline+=,%{&encoding}                  " encoding
"    set statusline+=,%{&fileformat}                " file format
     set statusline+=]

     set statusline+=\ [%2.(%c%)\ lin:%-7.(%l/%L%)\ %P] " col lin/tot perc

"    set statusline+=\ %f                               " filename
     set statusline+=\ [%t]                             " filename

     if filereadable(expand("~/.vim/plugin/rails.vim"))
         set statusline+=\ %{rails#statusline(1)}      " rails.vim
     endif

     if filereadable(expand("~/.vim/plugin/fugitive.vim"))
         set statusline+=\ %{fugitive#statusline()}     " git branch
     endif

     if filereadable(expand("~/.vim/plugin/capslock.vim"))
         set statusline+=\ %{CapsLockStatusline()}      " capslock.vim
     endif

"    set statusline+=%0                             " break
"    set statusline+=asc:[%3.(%b%)\ %3.(x%B%)]      " current char (ga)

"    if filereadable(expand("~/.vim/plugin/taglist.vim"))
"        set statusline+=%(tag:[%{Tlist_Get_Tagname_By_Line()}]%)
"    endif

"    set statusline+=\ [%2.(%c%)\ lin:%-7.(%l/%L%)]\ %P
"    set statusline+=\ [col:%2.(%c%)\ lin:%-7.(%l/%L%)]\ %P

     if filereadable(expand("~/.vim/plugin/vimbuddy.vim"))
        set statusline+=%=%{VimBuddy()} " vim buddy
     endif

"   if has("perl")
"       set statusline+=\ perl
"   endif
"   if has("ruby")
"       set statusline+=\ ruby
"   endif

" }

" Coding Rules {

    set completeopt=menu,preview,longest    " <C-N>/acp: completion popup menu options

    set gdefault            " global search/replace by default

    set showmatch           " show matching brackets
    set matchtime=5         " ms blinking showmatch

    set ignorecase          " case insensitive
    set infercase           " if there are caps adjust auto-completion
    set smartcase           " if there are caps go insensitive

    " set ts=4 sts=4 sw=4 et   sta   nolist - spaces
    " set ts=8 sts=0 sw=8 noet nosta list   - tabs
    set tabstop=4           " real tabs will show 8 spaces
    set softtabstop=4       " how many spaces in a tabstop
    set shiftwidth=4        " sw: indent size
    set expandtab           " no tabs - space in place of tabstops
    set smarttab            " sta: space in place of tabs in a new line

    set autoindent          " ai: pre-req for si
    set copyindent          " ci: copy same character used in previous indent line
    set smartindent         " si: on
    set shiftround          " round indent to shiftwidth

    set backspace=indent,eol,start      " make backspace a more flexible

    set nrformats=alpha,octal,hex   " C-A/C-X: increment/decrement

    " wrap {
    set textwidth=78        " tw
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
    " }

" }

" Folding {
    set foldenable              " Turn on folding
    set foldmarker={,}          " Fold C style code (only use this as default
                                " if you use a high foldlevel)
    set foldmethod=marker       " Fold on the marker
    set foldlevel=100           " Don't autofold anything (but I can still fold manually)
    set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds

    " Fold HTML tags
    nnoremap <leader>ft Vatzf

    function! SimpleFoldText() " {
        return getline(v:foldstart).' '
    endfunction " }

    set foldtext=SimpleFoldText() " Custom fold text function (cleaner than default)

" }

" FileTypes {

    " all files {
        " Strip white space
        autocmd BufWritePre * :call Preserve("%s/\\s\\+$//e")

        " Come back to last position
        autocmd BufReadPost *   if line("'\"") > 0
                              \ && line("'\"") <= line("$") |
                              \    exe "normal! g'\""       |
                              \ endif

        " no extension: treat as txt file
        autocmd BufRead,BufNewFile *  setfiletype txt
    " }

    " Text {
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
    " }

    " Notes {
        autocmd BufNewFile,BufRead *.notes     setlocal filetype=notes
        autocmd BufNewFile,BufRead *.notes.txt setlocal filetype=notes
    " }

    " Ruby {
        autocmd BufNewFile,BufRead *.rb  setlocal filetype=ruby
        autocmd FileType           ruby  setlocal ts=2 sts=2 sw=2 et nowrap
    " }

    " LogFiles {
        " goto end of file
        autocmd BufReadPost  *.log      normal G
    " }

    " SQL*Plus {
        autocmd BufNewFile,BufRead *sql       set filetype=plsql
        " http://www.oracledba.ru/notes_vim_en.html
        autocmd BufNewFile,BufRead afiedt.buf set filetype=plsql
        "
      " autocmd BufRead *sql set makeprg=~/bin/sql_compile_vim.sh\ %\ scott/tiger@orcl
        autocmd BufRead *sql set errorformat=%E%l/%c%m,%C%m,%Z

    " }

    " Makefile {
        autocmd BufRead     [Mm]akefile*    setlocal filetype=make
        autocmd FileType    automake,make   setlocal ts=8 sts=0 sw=8 noet nosta list
    " }

    " Programming settings {
    " http://www.mattrope.com/computers/conf/vimrc.html
    " augroup prog
    "     au!
    "     au BufRead *.c,*.cc,*.cpp,*.h,*.java set formatoptions=croql cindent nowrap nofoldenable
    "     au BufEnter *.java                      map <C-Return> :w\|:!javac %<CR>
    "     au BufEnter *.c                         map <C-Return> :w\|:!gcc %<CR>
    "     au BufEnter *.cc,*.cpp                  map <C-Return> :w\|:!g++ %<CR>
    "     au BufLeave *.java,*.c,*.cc             unmap <C-Return>
    " augroup END
    " }

    " Mail {
        autocmd BufRead     letter*     set filetype=mail
        autocmd Filetype    mail        set fo-=l autoindent spell
    " }

    " Notes {
        autocmd BufNewFile,BufRead *.notes     set filetype=notes
        autocmd BufNewFile,BufRead *.notes.txt set filetype=notes
    " }

    " git.git/contrib {
    "   autocmd BufNewFile,BufRead COMMIT_EDITMSG set filetype=gitcommit
    " }

    " Rehash:
    "   autocmd BufWritePost ~/Work/mv_home/dot.vimrc   so ~/.vimrc

" }

" Unicode {
        " Char  CTRL-V+u    i+CTRL-V+digit
        " ¬       ac        U+00AC          not
        " ▸     25b8        U+25B8          black right triangle
        " ☠     2620        U+2620          skull and bones
        " ❤     2764        U+2764          heavy black heart
" }

" Snippets {
    " :0 put =range(1,15)
    " :for in in range(1,15) | put ='192.168.1.'.i | endfor

    " tab to spaces to tab
    command! TabOn   :set noexpandtab|retab!
    command! TabOff  :set expandtab|retab!

    " http://vimcasts.org/episodes/tidying-whitespace/
    function! Preserve(command)
        " Preparation: save last search, and cursor position.
        let _s=@/
        let l = line(".")
        let c = col(".")
        " Do the business:
        execute a:command
        " Clean up: restore previous search history, and cursor position
        let @/=_s
        call cursor(l, c)
    endfunction

    nmap _$ :call Preserve("%s/\\s\\+$//e")<CR>
    nmap _= :call Preserve("normal gg=G")<CR>

    " define :Lorem command to dump in a paragraph of lorem ipsum
    " by Willa! http://github.com/willian/willvim/tree/master
    command! -nargs=0 Lorem :normal iLorem ipsum dolor sit amet, consectetur
            \ adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore
            \ magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
            \ ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
            \ irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
            \ fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
            \ proident, sunt in culpa qui officia deserunt mollit anim id est
            \ laborum

    "
    "   nmap <leader>id1 <C-R>=strftime("%c")
    "   nmap <leader>ifp :e <C-R>=expand("%:p:h") .'/' <C-R>
    "   nmap <leader>ifp <C-R>=expand("%:p:h") .'/' <C-R>


    " http://github.com/nvie/vimrc/raw/master/vimrc
    " make p in Visual mode replace the selected text with the yank register
    " vnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

    " Pull word under cursor into LHS of a substitute (for quick search and
    " replace)
    " nmap <leader>z :%s#\<<C-r>=expand("<cword>")<CR>\>#

    " Strip all trailing whitespace from a file, using ,w
    " nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

    " Run Ack fast (mind the trailing space here, wouldya?)
    " nnoremap <leader>a :Ack

    " Reselect text that was just pasted with ,v
    " nnoremap <leader>v V`]

    " Re-hardwrap paragraphs of text:
    " nnoremap <leader>q gqip

" }

" Plugins {

    " align, alignmaps {
        let g:DrChipTopLvlMenu     = "Plugin."
        let g:alignmaps_euronumber = 1
    " }

    " acp/autocomplpop {
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
    " }

    " autoclose.vim {
        " Turn it off:
        " let g:autoclose_loaded = 1
    " }

    " Bash-support {
        let g:BASH_Root = 'B&ash.'         " original
        let g:BASH_Root = '&Plugin.B&ash.' " mine.

        let g:BASH_Support_Root_Dir        = $HOME.'/.vim/bundle/bash-support'

        let g:BASH_GlobalTemplateFile      = '/codework/bash/templates'
        let g:BASH_LocalTemplateFile       = '/codework/bash/templates'
        let g:BASH_CodeSnippets            = '/codework/bash/snippets'
       "let g:BASH_Dictionary_File         = '/codework/bash/bash.dict.txt'
       "let g:BASH_MapLeader               '\'
       "let g:BASH_Errorformat             '%f:\ line\ %l:\ %m'
    " }

    " bufexplorer {
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
    " }

    " capslock.vim {
        " Turn it off:
        " let g:loaded_capslock = 1
    " }

    " dbext {
    " }

    " endwise.vim {
        " Turn it off:
        " let g:loaded_endwise = 1
    " }

    " fugitive.vim {
        " Turn it off:
        " let g:loaded_fugitive = 1
    " }

    " FuzzyFinder {

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

    " }

    " increment.vim {
    " }

    " LargeFile {
        " in megabytes - :Large/:Unlarge
        let g:LargeFile= 200
    " }

    " mark.vim {
        " Turn it off:
        " let g:loaded_mark = 1
    " }

    " marks_corey.vim {
        " Turn it off:
        " let g:loaded_marks_corey = 1
    " }

    " matchit.vim {
        " Turn it off:
        " let loaded_matchit = 1
    " }

    " NerdCommenter {
        " Turn it off:
        " let loaded_nerd_comments=1

        let NERDCreateDefaultMappings = 1
        let NERDRemoveExtraSpaces = 1
        let NERDSpaceDelims = 1
        let NERDMenuMode = 0

    " }

    " NerdTree {
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
    " }

    " openssl (password safe) {
        " ms: 15000 - 15s
        "     30000 - 20s
        "    300000 -  5m
        "let g:openssl_timeout = 301000
    " }

    " Perl-support {
        let g:Perl_Root = '&Perl.'          " original
        let g:Perl_Root = '&Plugin.&Perl.'  " mine.

        let g:Perl_Support_Root_Dir        = $HOME.'/.vim/bundle/perl-support'

        let g:Perl_GlobalTemplateFile      = '/codework/perl/templates.pl'
        let g:Perl_LocalTemplateFile       = '/codework/perl/templates.pl'
        let g:Perl_CodeSnippets            = '/codework/perl/snippets.pl'
        let g:Perl_Dictionary_File         = '/codework/perl/perl.dict.txt'
        let g:Perl_PerlModuleList          = '/codework/perl/perl.list.txt'
        let g:Perl_PerlModuleListGenerator = '/codework/perl/perl.list.txt'
       "let g:Perl_Printheader             = "%<%f%h%m%<  %=%{strftime('%x %X')}     Page %N"
       "let g:Perl_PerlcriticSeverity      = 5
       "let g:Perl_PerlcriticVerbosity     = 5
       "let g:Perl_PerlcriticOptions       = ""
       "let g:Perl_PerlRegexSubstitution   = '$+'
       "let g:Perl_MapLeader               = '\'

    " }

    " project.vim {
        " Turn it off:
        " let loaded_project = 1

        let g:proj_window_width = 40
        let g:proj_window_increment = 20

        " Default: 'imst'
        let g:proj_flags = 'imstn'

        nmap <silent> <Leader>p :Project<CR>

    " }

    " rails.vim {
        " Turn it off:
        " let g:loaded_rails = 1
        let g:rails_menu = 1
        let g:rails_history_size = 9
    " }

    " repeat.vim {
        " Turn it off:
        " let g:loaded_repeat = 1
    " }

    " searchcomplete {
        " Turn it off:
        " let loaded_search_complete = 1
    " }

    " speeddating.vim {
        " Turn it off:
        " let g:loaded_speeddating      = 1
        " 0: maps to <C-A>/<C-X>
        let g:speeddating_no_mappings = 0
    " }

    " SQLUtilities {
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

    " }

    " surround.vim {
        " Turn it off:
        " let g:loaded_surround = 1
    " }

    " taglist {
        " let loaded_taglist = 1 " 0: activate / 1: do not load
        " let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
        " let Tlist_File_Fold_Auto_Close = 1
        " let Tlist_Show_Menu = 1

        " map <leader>t   :TlistToggle     <CR>
        " map <leader>ts  :TlistSessionSave ~/.tlistsession.vim.tag <CR>
        " map <leader>tl  :TlistSessionLoad ~/.tlistsession.vim.tag <CR>
    " }

    " textformat.vim {
        " Turn it off:
        " let g:loaded_textformat = 1
    " }

    " unimpaired.vim {
        " Turn it off:
        " let g:loaded_unimpaired = 1
    " }

    " Zen-Coding {
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
    " }

    " RainbowPlugin {
        " Turn it off:
        " let g:loaded_Rainbow = 1
    " }

" }

" Corrections {

    if version >= 703 " Vim 7.x specific colors
        hi CursorColumn   guifg=NONE        guibg=black       gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=BOLD
        hi ColorColumn    guifg=NONE        guibg=black       gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=BOLD
    endif

    set paste  " terminal: do the right thing when executing paste
" }


" vim: set foldmarker={,} foldlevel=0 nospell:

