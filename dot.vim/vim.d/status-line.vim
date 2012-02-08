
" Status line

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

"   set statusline+=\ %f                           " filename
    set statusline+=\ [%t]                         " filename tail
"   set statusline+=\ [%F]                         " Full path
    set statusline+=\ [%{getcwd()}]                " buffer dir
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


" vim: set foldlevel=9

