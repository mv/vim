
" Plugins built-in with vim
" =========================
    " Tip:
    "     scriptnames     " List all sourced scripts


    """
    """ Vim: Built in
    """
    " spec.vim: rpm spec files
    " spec.vim:                 {{{
    let spec_chglog_format = "%Y-%m-%d - Marcus Vinicius Ferreira <ferreira.mv@gmail.com>"
    let spec_chglog_prepend = 1
    let spec_chglog_release_info = 1
"   map <buffer> <LocalLeader>c <Plug>SpecChangelog
    " }}}

    " TOhtml
    " TOhtml                    {{{

    let g:html_use_encoding = 'UTF-8'
    let g:html_ignore_folding = 1

    " }}}

    " netrw
    " netrw                     {{{
    "   0: on, 1: off
   "let g:loaded_netrw       = 1
   "let g:loaded_netrwPlugin = 1
    let g:netrw_liststyle    = 0
   "let g:netrw_winsize      = 50

    " 'p': preview windows split horizontally/vertically
   "let g:netrw_preview      = 0

    " horizontal split: above or below ?
    "et g:netrw_alto         = 1
    " vertical split: left or right ?
    "et g:netrw_altv         = 1

    "et g:netrw_banner       = 1
   "let g:netrw_browse_split = 3
    let g:netrw_cursor       = 4
    "et g:netrw_home         = "~"
    "et g:netrw_keepdir      = 1
    let g:netrw_timefmt      = '%F %H:%M'
    let g:netrw_sort_sequence = '[\/]$,*'
    " }}}

