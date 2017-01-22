
" vim:ft=vim:set foldlevel=9:

    " LogFiles
    " goto end of file
    autocmd BufReadPost *.log normal G

    " Mail
    autocmd BufRead     letter*     setlocal filetype=mail
    autocmd Filetype    mail        setlocal fo-=l autoindent spell


