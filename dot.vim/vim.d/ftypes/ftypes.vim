
" FileTypes
" =========
" vim:ft=vim:set foldlevel=9:

    " LogFiles                  {{{
        " goto end of file
        autocmd BufReadPost *.log normal G
    " }}}

    " Mail                      {{{
        autocmd BufRead     letter*     set filetype=mail
        autocmd Filetype    mail        set fo-=l autoindent spell
    " }}}

    " SML                       {{{
        autocmd BufNewFile,BufRead *.sml setlocal filetype=sml
        autocmd FileType             sml setlocal ts=4 sts=4 sw=4 et nowrap
        autocmd FileType             sml setlocal makeprg=sml\ '%'
       "autocmd FileType             sml setlocal makeprg=rlwrap\ sml\ -P\ full\ '%'
    " }}}


