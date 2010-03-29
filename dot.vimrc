

" Header and Notes {
"
"   vim: set foldmarker={,} foldlevel=0 nospell:
"
"   vi/vim: dot.vimrc
"   mvf: ferreira.mv[ at ]gmail.com
"   based on http://vi-improved.org/vimrc.php
"
" }

" KeyMappings {

    " http://items.sjbach.com/319/configuring-vim-right
    " scroll viewpoint by 'n' lines
    nnoremap <C-j> 5<C-e>
    nnoremap <C-k> 5<C-y>

    " space / shift-space scroll in normal mode
"   noremap <S-space> <C-b>
"   noremap <space>   <C-f>

    let mapleader=","
    nmap <leader>mk :make<CR>
    nmap <leader>eg :e $MYGVIMRC<CR>
    nmap <leader>ev :e $MYVIMRC<CR>
    nmap <leader>eb :e ~/.bashrc<CR>
    nmap <leader>ex :Ex<CR>
    nmap <leader>s :split<CR>
    nmap <leader>vs :vsplit<CR>

    nmap <leader>fc :foldclose<CR>
    nmap <leader>fo :foldopen<CR>

    nmap <leader>f0 :set foldlevel=0<CR>
    nmap <leader>f1 :set foldlevel=1<CR>
    nmap <leader>f2 :set foldlevel=2<CR>
    nmap <leader>f3 :set foldlevel=3<CR>
    nmap <leader>f9 :set foldlevel=9<CR>

    " Remove trailing spaces
    nmap <leader>remove :%s/\s*$//g   <CR>
    " dos2,nix
    nmap <leader>unix   :%s/\r$//     <CR>

    nmap <leader>rot ggg?G

    " moving buffers/windows
    map <C-j> <C-W>j
    map <C-k> <C-W>k
    map <C-h> <C-W>h
    map <C-l> <C-W>l
"   map <down>  <C-W>j
"   map <up>    <C-W>k
"   map <left>  <C-W>h
"   map <right> <C-W>l

    " K = inverted J: join line up
    map K ddpkJ

    nmap <leader>q  :q <CR>
    nmap <leader>q1 :q!<CR>
    nmap <leader>w  :w <CR>
    nmap <leader>wa :wa<CR>
    nmap <leader>wq :wq!<CR>
    nmap <leader>ls :ls<CR>
    nmap <leader>r  :Rehash<CR>
    nmap <leader>rg :Rehashg<CR>

    nmap <leader>cda :cd %:p:h<CR>
    " http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
    nmap <leader>cd :cd <C-R>=expand("%:p:h")<CR>

    cabbrev W w
    cabbrev Q q
    cabbrev WQ! wq!

    command! Rehash     source $MYVIMRC
    command! Rehashg    source $MYGVIMRC
    command! Helptags   helptags ~/.vim/doc
    command! Color      echo g:colors_name

    map <leader>id1 <C-R>=strftime("%c") "   nmap <leader>ifp :e <C-R>=expand("%:p:h") .'/' <C-R>
"   map <leader>ifp <C-R>=expand("%:p:h") .'/' <C-R>

    " Command line map
    cmap %/ <C-R>

" }

" General {
    set nocompatible

    syntax on
    filetype plugin indent on

    " vi compatible options {
    set cpoptions=aABceFsmq
    "             |||||||||
    "             ||||||||+-- When joining lines, leave the cursor between joined lines
    "             |||||||+-- When a new match is created (showmatch) pause for .5
    "             ||||||+-- Set buffer options when entering the buffer
    "             |||||+-- :write command updates current file name
    "             ||||+-- Automatically add <CR> to the last line when using :@r
    "             |||+-- Searching continues at the end of the match at the cursor position
    "             ||+-- A backslash has no special meaning in mappings
    "             |+-- :write updates alternative file name
    "             +-- :read updates alternative file name
    " }
    set cpoptions-=n
    "              +-- column for 'number' does not show wrapped text

    "et autochdir                   " always switch to the current file directory
    set backup                      " make backup files
    set backupdir=~/var             " where to put backup files
    set clipboard+=unnamed          " share windows clipboard
    set directory=~/var             " directory to place swap files in
    set fileformats=unix,dos,mac    " support all three, in this order
    set history=300                 " history size
    set nohidden                    " you can change buffers without saving
    set modeline                    " modeline on
    set paste                       " terminal vim: does not detect paste from typing

    " (XXX: #VIM/tpope warns the line below could break things)
    set iskeyword+=_,$,@,%,#        " none of these are word dividers

    set showcmd                 " show command line
    set wildmenu                " turn on command line completion wild style
    set wildmode=list:longest   " turn on wild mode huge list
    set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png,*~,*.lo
                                " ignore these list file extensions

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

" Vim-UI {
    set title           " set window name as titlestring
    set ruler           " show cursor line/col position

    set number                          " linenumber
    set numberwidth=5                   " linenumber width
    " linenumber on/off
    nmap <leader>nu  :set invnumber<CR>

    set cursorline
    set cursorcolumn
    " set cursorcolumn/nocursorcolumn
    nmap <leader>cuc :set invcuc   <CR>

    set nostartofline       " keep cursor where it was
    set scrolloff=3         " keep 3 lines scrolling up/down
    set sidescroll=10       " keep 10 lines scrolling left/right
    set report=0            " report any change via ':'

    set splitbelow          " sb: new split below current window
    set splitright          " spr: new split to the right

    set incsearch           " Highlight dynamically as they are typed.
    set nohlsearch          " Highlight search terms: off on start
    " Highlight on/off
    nmap <leader>n :set invhls<CR>

    set nolist              " [no]list invisible chars
    set listchars=tab:>-,trail:·,eol:_,extends:>,precedes:<
    "             |      |       |     |         +-- line befor left margin: <
    "             |      |       |     +-- line beyond right margin: >
    "             |      |       +-- EOF: _
    "             |      +-- spaces at end of line: ....
    "             +-- each tab: >----
    " list invisibles on/off
    nmap <leader>v :set invlist  <CR>
    nmap <C-V><C-V>:set invlist  <CR>

    " My status line
    " --------------
     set laststatus=2   " always show statusline

     set statusline =%<buf:[%n]\ %f\ %h%m%r         " buffer, filename, flags
     set statusline+=\ \ ft:[
     set statusline+=%{strlen(&ft)?&ft:'none'}      " filetype
    "set statusline+=,%{&encoding}                  " encoding
    "set statusline+=,%{&fileformat}                " file format
     set statusline+=]\ "
     set statusline+=%=                             " break
    "set statusline+=asc:[%3.(%b%)\ %4.(0x%B%)]     " current char
     if filereadable(expand("~/.vim/plugin/fugitive.vim"))
         set statusline+=%{fugitive#statusline()}
     endif
     if filereadable(expand("~/.vim/plugin/taglist.vim"))
         set statusline+=%(tag:[%{Tlist_Get_Tagname_By_Line()}]%)
     endif
"    if filereadable(expand("~/.vim/plugin/git-branch-info.vim"))
"        set statusline+=\ [%{GitBranchInfoString()]}
"    endif
     set statusline+=\ [%3.(%c%)\ %-7.(%l/%L%)]\ %P
     if filereadable(expand("~/.vim/plugin/vimbuddy.vim"))
        set statusline+=\ %{VimBuddy()} " vim buddy
     endif

    set visualbell
    set errorbells

" }

" Text Formatting/Layout {

    set grepprg=ack
    set grepformat=%f:%l:%m

    set completeopt=menu,preview,longest    " completion menu
    set formatoptions=rq                    " default: tcq vide fo-table

    set showmatch           " show matching brackets
    set matchtime=5         " ms blinking showmatch

    set ignorecase          " case insensitive
    set infercase           " if there are caps adjust auto-completion
    set smartcase           " if there are caps go insensitive

    set expandtab           " no tabs - space in place of tabstops
    set softtabstop=4       " how many spaces in a tabstop
    set tabstop=8           " real tabs will show 8 spaces

    set autoindent          " ai: pre-req for si
    set smartindent         " si: on
    set shiftwidth=4        " sw: indent size
    set smarttab            " sta: space in place of tabs in a new line
    set shiftround          " round indent to shiftwidth

    set backspace=indent,eol,start      " make backspace a more flexible

    set nrformats=alpha,octal,hex   " C-A/C-X: increment/decrement

    " wrap {
    set nowrap sidescroll=1         " [no] wrap long lines
"   set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
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

    function! SimpleFoldText() " {
        return getline(v:foldstart).' '
    endfunction " }

    set foldtext=SimpleFoldText() " Custom fold text function (cleaner than default)

" }

" FileTypes {

    " all files {
        " Strip white space
        autocmd BufWritePre *  :%s/\s\+$//e

        " Come back to last position
        autocmd BufReadPost *   if line("'\"") > 0
                              \ && line("'\"") <= line("$") |
                              \    exe "normal! g'\""       |
                              \ endif
    " }

    " Text {
        autocmd BufNewFile,BufRead *.txt     set tw=78
    " }

    " LogFiles {
        autocmd BufReadPost  *.log      normal G
    " }

    " SQL*Plus {
        autocmd BufNewFile,BufRead *sql       set filetype=plsql
        " http://www.oracledba.ru/notes_vim_en.html
        autocmd BufNewFile,BufRead afiedt.buf set filetype=plsql
        "
        autocmd BufRead *sql set makeprg=~/bin/sql_compile_vim.sh\ %\ scott/tiger@orcl
        autocmd BufRead *sql set efm=%E%l/%c%m,%C%m,%Z

    " }

    " Make {
        autocmd BufRead     qpx.inc     set filetype=make
        autocmd FileType    make        set noet nosta
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
        autocmd BufNewFile,BufRead COMMIT_EDITMSG set filetype=gitcommit
    " }

    " Rehash:
    "   autocmd BufWritePost ~/Work/mv_home/dot.vimrc   so ~/.vimrc

" }

" GUI Settings {

    set bg=dark

    map <leader>1 :colorscheme ir_black3<CR>
    map <leader>2 :colorscheme ir_black2<CR>
    map <leader>3 :colorscheme ir_black <CR>
    map <leader>4 :colorscheme torte    <CR>
    map <leader>5 :colorscheme desert   <CR>
    map <leader>0 :echo g:colors_name   <CR>

    " Terminal vim theme
    colorscheme torte

    " Gvim theme
    if has("gui_running")
        if filereadable(expand("~/.vim/colors/ir_black3.vim"))
        colorscheme ir_black3
        endif

        set cursorcolumn
        set mouse=a
        set mousehide

        set guifont=Monaco:h12  " MacVim
        set tabpagemax=100      " tpm: max nro of tab windows
        set gtl=%t gtt=%F       " guitablabel/guitabtooltip

        set columns=178
        set lines=44
        set transp=4
    endif
" }

" MyLib {

    " MVF_AddLineNumbers {
    "     Add explict line numbers to the left
    :function! MVF_AddLineNumbers()
    :    exec ":% !awk '{printf \"\\%3d \\%s\\n\", NR, $0}'"
    :endfunction
    " }

    " MVF_TerminateLastLine {
    "     Last line of a file must be a \n
    :function! MVF_TerminateLastLine()
    :   let s:cur = line(".")
    :   let s:lst = line("$")
    :   let s:str = getline( s:lst )
    :   if s:str !~ '^$'
    "       " save current position
    :       normal mz
    "       " Go last line, add new, del comments
    :       normal Go
    :       normal Gd$
    "       " restore position
    :       normal 'z
    :   endif
    "   echo "Line " [s:lst] [s:str]
    :endfunction

    :if exists( 'MVF_TerminateLastLine' )
    :   autocmd BufWritePre   * execute TerminateLastLine()
    :   autocmd BufWritePost  * execute normal 'z
    :endif

    map <leader>last :call TerminateLastLine() <CR>
    " }

" }

" Snippets {
    " :0 put =range(1,15)
    " :for in in range(1,15) | put ='192.168.1.'.i | endfor

    " tab to spaces: :set et|retab
    " spaces to tab: :set noet:retab!

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
" }

" Plugins {

    " autoclose {
        map <leader>a :AutoCloseToggle <CR>
    " }

    " autocomplpop {
        let g:AutoComplPop_NotEnableAtStartup    = 0
        let g:AutoComplPop_MappingDriven         = 1
        let g:AutoComplPop_BehaviorKeywordLength = 5
        let g:AutoComplPop_BehaviorFileLength    = 3

        map <leader>ace :AutoComplPopEnable <CR>
        map <leader>acd :AutoComplPopDisable <CR>
    " }

    " bufexplorer {
        " ,be / ,bv / ,bs
        let g:bufExplorerReverseSort     = 0
        let g:bufExplorerShowUnlisted    = 0    " Do not show unlisted buffers.
        let g:bufExplorerSortBy          ='name'
        let g:bufExplorerShowDirectories = 1    " Show directories.
    " }

    " grep {
        let Grep_Path = 'grep'
        let Grep_Find_Path = 'find'
        let Grep_Xargs_Path = 'xargs'

        let Grep_Default_Filelist = '*'
        let Grep_Skip_Dirs  = 'RCS CVS SCCS .svn .git'
        let Grep_Skip_Files = '*.bak *~ *,v'

        let Grep_Default_Options = '-i'

        let Grep_Xargs_Options = '--null'
        " let Grep_Xargs_Options = '--print0'
        " let Grep_Null_Device = '/dev/null'

    " }

    " openssl (password safe) {
        " ms: 15000 - 15s
        "     30000 - 20s
        "    300000 -  5m
        let g:openssl_timeout = 301000
    " }

    " taglist {
        let Tlist_Ctags_Cmd = '/opt/local/bin/ctags'
        let Tlist_File_Fold_Auto_Close = 1
        let Tlist_Show_Menu = 1
        map <leader>t   :TlistToggle     <CR>
        map <leader>ts  :TlistSessionSave ~/.tlistsession.vim.tag <CR>
        map <leader>tl  :TlistSessionLoad ~/.tlistsession.vim.tag <CR>
    " }

    " FuzzyFinder {
        let g:fuzzy_ignore         = "*.log"
        let g:fuzzy_matching_limit = 70
        let g:fuzzy_ceiling = 95000
        map <leader>tm   :FuzzyFinderTextMate  <CR>
        map <leader>ffb  :FuzzyFinderBuffer    <CR> " Buffer
        map <leader>fff  :FuzzyFinderFile      <CR> " File
        map <leader>ffmf :FuzzyFinderMruFile   <CR> " Recent
        map <leader>ffc  :FuzzyFinderCmd       <CR> " CoMmand
        map <leader>ffmc :FuzzyFinderMruCmd    <CR> " Command
        map <leader>ffd  :FuzzyFinderDir       <CR>
        map <leader>ffbm :FuzzyFinderBookmark  <CR>
        map <leader>fft  :FuzzyFinderTag       <CR>
        map <leader>fftf :FuzzyFinderTaggedFile<CR>
    " }

    " NerdCommenter {
        map <leader>c <plug>NERDCommenterToggle
        let NERDSpaceDelims = 1
    " }

    " NerdTree {
        map <leader>d  :NERDTreeToggle <CR> " Dir tree
        map <leader>dd :NERDTreeMirror <CR> " Dir tree
        let NERDTreeCaseSensitiveSort = 1
        let NERDTreeChDirMode         = 0
        let NERDTreeIgnore            = ['\.[ao]$','\.sw?$','\.DS_Store','\.svn','\.CVS','\.git']
        let NERDTreeMouseMode         = 2
        let NERDTreeShowLineNumbers   = 0
        let NERDTreeWinSize           = 35
        let NERDTreeHijackNetrw       = 1
    " }

    " Bash-support {
        let BASH_Root = 'B&ash.'         " original
        let BASH_Root = '&Plugin.B&ash.' " mine.
    " }

    " Perl-support {
        let Perl_Root = '&Perl.'          " original
        let Perl_Root = '&Plugin.&Perl.'  " mine.
    " }

" Test {
    if has("perl")
        set statusline+=\ perl
    endif

    if has("ruby")
        set statusline+=\ ruby
    endif
" }

" vim: set foldmarker={,} foldlevel=0 nospell:

