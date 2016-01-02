
" Mappings
" ================
    " Tip: D  : command key
    "      D-S: command+shift key

    set timeoutlen=2000               " Wait 2 seconds before timing out a mapping
    set ttimeoutlen=100               " and only 100 ms before timing out on a keypress.

    let mapleader=","

    " GUI
    " ======================
    " linenumber on/off
    nnoremap <leader>nu  :set invnumber<CR>

    " relativenumber on/off
    nnoremap <leader>rnu :set invrnu   <CR>

    " set cursorcolumn/nocursorcolumn
    nnoremap <leader>cuc :set invcuc   <CR>

    " search Highlight on/off
    nnoremap <leader>h   :set invhls<CR>

    " invisibles List on/off
    nnoremap <leader>l   :set invlist  <CR>


    " Identation
    " ======================

    " Normal_mode:
    nnoremap <D-[> <<
    nnoremap <D-]> >>

    " Visual_mode: (gv: keeps selection)
    vnoremap >   ><CR>gv
    vnoremap <   <<CR>gv
    vmap <D-[>   <gv
    vmap <D-]>   >gv

    " Movements
    " ======================

    " row up/down if wrap active
    " http://nvie.com/posts/how-i-boosted-my-vim/
    nnoremap j gj
    nnoremap k gk

    " http://vi-improved.org/vimrc.php
    " space/shift-space: scroll in normal mode
    " noremap <S-SPACE> <C-B>
    " noremap <SPACE>   <C-F>

    " http://blog.learnr.org/post/59098925/configuring-vim-some-more
    " begin/end of a  line
    " map H ^
    " map L $

    " Editing
    " =======================
    " K = inverted J: join current line to the one below
    nnoremap K ddpkJ

    " Out of INSERT mode
    inoremap jj <Esc>
    inoremap kk <Esc>

    " Using marks
    " =======================

    " ` is more useful than ' but less accessible.
    " nnoremap ' `
    " nnoremap ` '

    " Editing entire buffer
    " ======================

    " Reformat
    nnoremap _= :call Preserve("normal gg=G")<CR>

    " Strip trailing spaces
    nnoremap _$ :call Preserve("%s/\\s\\+$//e")<CR>

    " dos2,nix
    nnoremap _n :call Preserve("% s/\r$//")<CR>

    " Editing vimrc
    " =======================

    nnoremap <leader>ev :tabnew   $MYVIMRC<CR>
    nnoremap <leader>ed :tabnew   $HOME/.vim/vim.d/<CR>

    " Copy/paste registers
    " =======================

    " (Correcting my international keyboard)
"   nnoremap \ "

    " allow deleting selection without updating the clipboard (yank buffer)
    " Ref: http://www.pixelbeat.org/settings/.vimrc
    " vnoremap x "_x
    " vnoremap X "_X

    " Yank/paste to/from the OS clipboard with ,y and ,p
    nnoremap <leader>p "*p
    nnoremap <leader>P "*P
    nnoremap <leader>y "*y
    nnoremap <leader>yy "*yy

    " Quick yanking to the end of the line
    nnoremap Y y$

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
    map <leader>s= yypv$r=
    map <leader>s- yypv$r-
    map <leader>s+ yypv$r+
    map <leader>s_ yypv$r_
    map <leader>s^ yypv$r^
    map <leader>s* yypv$r*
    map <leader>s# yypv$r#
    map <leader>s! yypv$r!

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
    " nnoremap \ :

    " making vim regex act like Perl Regex
    "     Thanks to Steve Losh for this liberating tip
    "     See http://stevelosh.com/blog/2010/09/coming-home-to-vim
    nnoremap / /\v
    vnoremap / /\v
    nnoremap ? ?\v
    vnoremap ? ?\v

    " command-line in history mode
    "    http://vim.wikia.com/wiki/Using_command-line_history
"   nnoremap : q:i
"   nnoremap / q/i
"   nnoremap ? q?i

    " CTRL-g shows filename and buffer number, too.
    " Ref:  https://github.com/godlygeek/vim-files/blob/master/.vimrc
    nnoremap <C-g> 2<C-g>

    " Pull word under cursor into LHS of a substitute (for quick search and
    " replace)
    " nnoremap <leader>z :% s#\<<C-r>=expand("<cword>")<CR>\>#

    " http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
    nnoremap <leader>cd  :cd  <C-R>=expand("%:p:h")<CR>
    nnoremap <leader>lcd :lcd <C-R>=expand("%:p:h")<CR>

    " Shortcuts
    " ======================

    nnoremap <leader>q  :q
    nnoremap <leader>q1 :q!
    nnoremap <leader>qa :qall!
    nnoremap <leader>w  :w
    nnoremap <leader>W  :w
    nnoremap <leader>wa :wa<CR>
    nnoremap <leader>WA :wa<CR>
    nnoremap <leader>wq :wq!<CR>
    nnoremap <leader>WQ :wq!<CR>
    nnoremap <leader>ws :w !sudo tee % >/dev/null<CR>
    nnoremap <leader>WS :w !sudo tee % >/dev/null<CR>
    nnoremap <leader>sa :browse confirm saveas

    cmap w!! w !sudo tee % >/dev/null<CR>

    " Folding
    " =======================

    " <space> toggles folds opened and closed
    " nnoremap <space> za
    " <space> in visual mode creates a fold over the marked range
    " vnoremap <space> zf

    " Tip: fold toggle: za
    nnoremap <leader>f0 :set foldlevel=0<CR>
    nnoremap <leader>f1 :set foldlevel=1<CR>
    nnoremap <leader>f2 :set foldlevel=2<CR>
    nnoremap <leader>f3 :set foldlevel=3<CR>
    nnoremap <leader>f4 :set foldlevel=4<CR>
    nnoremap <leader>f5 :set foldlevel=5<CR>
    nnoremap <leader>f6 :set foldlevel=6<CR>
    nnoremap <leader>f7 :set foldlevel=7<CR>
    nnoremap <leader>f8 :set foldlevel=8<CR>
    nnoremap <leader>f9 :set foldlevel=9<CR>


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

