
" vim:ft=vim:set foldlevel=9:

"""
""" Mv: Status line
"""

    set laststatus=2   " always show statusline

    " start a blank line
    set statusline=
"   set statusline=\                               " one blank

"   set statusline+=\ %f\                          " filename
"   set statusline+=%h%m%r                         " flags

"   set statusline+=,%{&encoding}                  " encoding
"   set statusline+=,%{&filefoGrmat}               " file format

    " [buffer:filetype]
"   set statusline+=[
    set statusline+=%n:                            " buffer number
    set statusline+=%{strlen(&ft)?&ft:'none'}      " filetype
"   set statusline+=]

    " [ col lin/tot perc ]
    " [ 7 lin:12/97 12%]
"   set statusline+=\ [%2.(%c%)\ lin:%-5.(%l/%L%)\ %p%%]

    " col lin/tot perc
    " [ 7x12/97 12%]
"   set statusline+=\ [%2.(%c%)x%-5.(%l/%L%)\ %p%%]
"   set statusline+=\ [%2.(%c%)x%-5.(%l/%L%):%p%%]

    " [ 7] 12/97 : [col] lin/tot
"   set statusline+=\ [%2.(%c%)x%-5.(%l/%L%)\ %p%%]
    set statusline+=\ [%2.(%c%)]\ %-5.(%l/%L%)

"   set statusline+=\ [%2.(%c%)\ lin:%-7.(%l/%l%)]\ %p
"   set statusline+=\ [col:%2.(%c%)\ lin:%-7.(%l/%l%)]\ %p

  " " [../pathname]
" " set statusline+=\ [%{getcwd()}]                " buffer dir
  " set statusline+=\ [..%{strpart(getcwd(),strlen(getcwd())-15,15)}/] " substr(getcwd(),-15)
  "
  " " [filename]
" " set statusline+=\ %f                           " filename
  " set statusline+=\ [%t]                         " filename tail
    set statusline+=\ %t                           " filename tail
" " set statusline+=\ [%F]                         " Full path

    " [../pathname/filename] (bug)
"   set statusline+=\ ..%{strpart(getcwd(),strlen(getcwd())-15,15)}/%t

    " [../current-cwd]
"   set statusline+=\ ..%{strpart(getcwd(),strlen(getcwd())-15,15)}/

    " fugitive.vim: current git branch
    if exists("*fugitive#statusline()")
        set statusline+=\ %{fugitive#statusline()}
    endif

    " rails.vim: rails file type
    if exists("*rails#statusline()")
        set statusline+=\ %{rails#statusline(1)}
    endif

    " capslock.vim
"   if exists("*capslockstatusline()")
"       set statusline+=\ %{capslockstatusline()}
"   endif

    " taglist.vim
"   if filereadable(expand("~/.vim/plugin/taglist.vim"))
"       set statusline+=%(tag:[%{tlist_get_tagname_by_line()}]%)
"   endif

    " vimbuddy.vim
"   if exists("*vimbuddy()")
"       set statusline+=%=%{vimbuddy()}
"   endif

    " file flags
    set statusline+=\ %m%r%h%w%q

"   set statusline+=%0                             " break
"   set statusline+=asc:[%3.(%b%)\ %3.(x%b%)]      " current char (ga)


