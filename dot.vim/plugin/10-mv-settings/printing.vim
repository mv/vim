
" vim:ft=vim:set foldlevel=9:

    " Printing:
    " =========
    set printfont=:h08
"   set printheader="%<%f%h%m%=Page %N"
    set printheader=%F
    set printheader+=%=Pg\ %N

    " macvim: gvimrc
    set printexpr=system('open\ −a\ Preview\ '.v:fname_in)\ +\ v:shell_error


