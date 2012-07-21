
" Status line

    set laststatus=2   " always show statusline

    set statusline=                                " start blank line
"   set statusline=\                               " one blank

"   set statusline+=\ %f\                          " filename
"   set statusline+=%h%m%r                         " flags

"   set statusline+=,%{&encoding}                  " encoding
"   set statusline+=,%{&filefoGrmat}               " file format

    set statusline+=[
    set statusline+=%n:                            " buffer number
    set statusline+=%{strlen(&ft)?&ft:'none'}      " filetype
"   set statusline+=,%{&encoding}                  " encoding
"   set statusline+=,%{&filefoGrmat}               " file format
    set statusline+=]

    " col lin/tot perc
    " [ 7 lin:12/97 12%]
"   set statusline+=\ [%2.(%c%)\ lin:%-5.(%l/%L%)\ %p%%]

    " col lin/tot perc
    " [ 7x12/97 12%]
    set statusline+=\ [%2.(%c%)x%-5.(%l/%L%)\ %p%%]

"   set statusline+=\ %f                           " filename
    set statusline+=\ [%t]                         " filename tail
"   set statusline+=\ [%F]                         " Full path

"   set statusline+=\ [%{getcwd()}]                " buffer dir
    set statusline+=\ [..%{strpart(getcwd(),strlen(getcwd())-15,15)}/] " substr(getcwd(),-15)

    set statusline+=\ %m%r%h%w%q

    if exists("*rails#statusline()")
        set statusline+=\ %{rails#statusline(1)}   " rails.vim
    endif

    if exists("*fugitive#statusline()")
        set statusline+=\ %{fugitive#statusline()} " git branch
    endif

"   if exists("*capslockstatusline()")
"       set statusline+=\ %{capslockstatusline()}  " capslock.vim
"   endif

"   set statusline+=%0                             " break
"   set statusline+=asc:[%3.(%b%)\ %3.(x%b%)]      " current char (ga)

"   if filereadable(expand("~/.vim/plugin/taglist.vim"))
"       set statusline+=%(tag:[%{tlist_get_tagname_by_line()}]%)
"   endif

"   set statusline+=\ [%2.(%c%)\ lin:%-7.(%l/%l%)]\ %p
"   set statusline+=\ [col:%2.(%c%)\ lin:%-7.(%l/%l%)]\ %p

    if exists("*vimbuddy()")
        set statusline+=%=%{vimbuddy()} " vim buddy
    endif

    " StatusLineHighlight       {{{

        Bundle 'vim-scripts/StatusLineHighlight'

        " Turn it off:
        " let g:loaded_StatusLineHighlight = 1

     nnoremap <Leader>sl :call StatusLineHL()<CR>

     function! StatusLineHL()
        " Text Buffer
        highlight StatusLineModified       guifg=#CCCCCC    guibg=DarkRed   gui=bold ctermfg=gray    ctermbg=DarkRed   cterm=NONE
        highlight StatusLineModifiedNC     guifg=DarkRed    guibg=gray      gui=bold ctermfg=DarkRed ctermbg=gray      cterm=NONE

        " Help buffer
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

    endfunction

    " }}}

" vim: set foldlevel=9

