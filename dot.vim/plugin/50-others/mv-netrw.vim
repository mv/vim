
" vim:ft=vim:set foldlevel=9:

    " netrw

    " 0: on, 1: off
    " let g:loaded_netrw       = 1
    " let g:loaded_netrwPlugin = 1

    let g:netrw_cursor       = 4
    let g:netrw_banner       = 1
    " let g:netrw_home         = "~"
    " let g:netrw_keepdir      = 1

    let g:netrw_timefmt      = '%F %H:%M'
    let g:netrw_sort_sequence = '[\/]$,*'

    " 1:
    " 2:
    " 3: tree
    let g:netrw_liststyle    = 3

    " <cr>
    " 1: horizontal: split below
    " 2: vertical:   split right
    " 3: new tab
    let g:netrw_browse_split = 2

    " <o>: horizontal split 
    " 0: horizontal: split above
    " 1: horizontal: split below
    let g:netrw_alto = 1

    " <v>: vertical split 
    " 0: vertical: split left
    " 1: vertical: split right
    let g:netrw_altv = 1

    " <p>: preview: open file, keep cursor in browse
    " 0: horizontal: split above
    " 1: vertical: split left
    let g:netrw_preview = 1

    " <t>: new tab: open file in a new tab, window size
    let g:netrw_winsize = 30

