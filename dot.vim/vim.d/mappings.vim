
" Mappings
" ================
    " Tip: D  : command key
    "      D-S: command+shift key

    " set timeoutlen=5000             " time in ms to complete a mapped key combination
    " set timeoutlen=2000             " Wait 2 seconds before timing out a mapping
    " set ttimeoutlen=100             " and only 100 ms before timing out on a keypress.

    let mapleader=","

    " GUI
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


    " Identation
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

    " Movements
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

    " Editing
    " =======================
    " CTRL-K:  delete so the end of line
    nmap <C-K> D

    " K = inverted J: join line up
    nmap K ddpkJ

    " Using marks
    " =======================

    " ` is more useful than ' but less accessible.
    " nnoremap ' `
    " nnoremap ` '

    " Editing entire buffer
    " ======================

    " Reformat
    nmap _= :call Preserve("normal gg=G")<CR>

    " Strip trailing spaces
    nmap _$ :call Preserve("%s/\\s\\+$//e")<CR>

    " dos2,nix
    nmap _n :call Preserve("% s/\r$//")<CR>

    " Editing vimrc
    " =======================

    nmap <leader>ev  :e   $MYVIMRC<CR>
    nmap <leader>sev :vsp $MYVIMRC<CR>

    " Copy/paste registers
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

    " Formatting
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

    " Command Line
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

    " Shortcuts
    " ======================

    nmap <leader>q  :q <CR>
    nmap <leader>q1 :q!<CR>
    nmap <leader>w  :w <CR>
    nmap <leader>wa :wa<CR>
    nmap <leader>wq :wq!<CR>
    nmap <leader>ww :w !sudo tee % >/dev/null
    nmap <leader>sa :browse confirm saveas<CR>

    cmap w!! w !sudo tee % >/dev/null

    " Folding
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


    " CNTRL-key
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



" vim: set foldlevel=9

