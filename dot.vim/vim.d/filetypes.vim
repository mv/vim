
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
        autocmd BufNewFile,BufRead Vagrantfile       setlocal filetype=ruby
        autocmd FileType           ruby              setlocal ts=2 sts=2 sw=2 et nowrap
    " }}}
    " Javascript/json           {{{
        autocmd BufNewFile,BufRead *.js,*.json       setlocal filetype=javascript
        autocmd BufNewFile,BufRead *.javascript      setlocal filetype=javascript
    " }}}
    " Puppet                    {{{
        autocmd BufNewFile,BufRead *.pp              setlocal filetype=puppet
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
        autocmd FileType             snippet  set ts=4 sts=4 sw=4 noet nosta list
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



vim: set foldlevel=9

