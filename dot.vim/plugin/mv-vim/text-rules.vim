
" vim:ft=vim:set foldlevel=9:

    " Text
set ts=4 sts=4 sw=4 et
set formatoptions=qtn2wla
        "         |||||||
        "         ||||||+- automatic formatting of paragraphs
        "         |||||+-- long line do not break in insert mode if already longer
        "         ||||+--- trailing whitespace as end of a paragraph
        "         |||+---- indent as 2nd line of paragraph
        "         ||+----- recognize numbered lists
        "         |+------ auto-wrap text in textwidth
        "         +------- allow formatting using gq
        " :help fo-table



" automatically breaks text and insert new line
set textwidth=77
set formatoptions=croql

command! AutoFormatOn  :set formatoptions+=a
command! AutoFormatOff :set formatoptions-=a

" wrap long lines at textwidth but does not insert a newline
set wrap

" :help usr_25.txt

" :help change.txt

" :help wrap
"       :set sidescroll=5
"       :set listchars+=precedes:<,extends:>
"  wrapmargin
"  linebreak
"  formatoptions
"     a - autoformat
"  paste
"  thesaurus
"  et
"  CTRL-V<Tab>
"  joinspaces
"  fo-table
"
"  	  1	    2         3
"12345678901234567890123456789012345
"I taught programming for a
"while. One time, I was stopped
"by the Fort Worth police,
"because my homework was too
"hard. True story.
"
"I taught programming for a
"while. One time, I was stopped
"by the Fort Worth police,
"because my homework was too
"hard. True Story.



"Besides SQLServer/Postgres..... do they use other databases....?" what else
"can



    " Editing
    " =======================
    " K = inverted J: join current line to the one below
    nnoremap K ddpkJ


    " Formatting
    " ======================

    " Re-hardwrap paragraphs of text:
    nnoremap <leader>g= gqip


    " Underline header
    map <leader>s= yypv$r=x
    map <leader>s- yypv$r-x
    map <leader>s+ yypv$r+x
    map <leader>s_ yypv$r_x
    map <leader>s^ yypv$r^x
    map <leader>s* yypv$r*x
    map <leader>s# yypv$r#x
    map <leader>s! yypv$r!x

    " Creating underline/overline headings for markup languages
    " Inspired by http://sphinx.pocoo.org/rest.html#sections
    "nnoremap <leader>1 yyPVr=jyypVr=
    "nnoremap <leader>2 yyPVr*jyypVr*
    "nnoremap <leader>3 yypVr=
    "nnoremap <leader>4 yypVr-
    "nnoremap <leader>5 yypVr^
    "nnoremap <leader>6 yypVr"

    " Editing entire buffer
    " ======================

    " Reformat
    nnoremap _= :call Preserve("normal gg=G")<CR>

    " Strip trailing spaces
    nnoremap _$ :call Preserve("%s/\\s\\+$//e")<CR>

    " dos2,nix
    nnoremap _n :call Preserve("% s/\r$//")<CR>


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
    nnoremap j gj
    nnoremap k gk


    " Out of INSERT mode
    inoremap jj <Esc>
    inoremap kk <Esc>

    " Quick yanking to the end of the line
    nnoremap Y y$

    " Reselect text that was just pasted with ,v
    nnoremap <leader>v V`]

    "don't move the cursor after pasting
    "(by jumping to back start of previously changed text)
    " noremap p p`[
    " noremap P P`[


