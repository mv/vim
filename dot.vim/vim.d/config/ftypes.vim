
" vim:ft=vim:set foldlevel=9:

    """
    """ FileTypes: shortcut to set filetype=
    """

    " Ref: https://github.com/henrik/dotfiles/blob/master/vimrc#L217-226
    " Quicker filetype setting:
    "   :F html
    " instead of
    "   :set ft=html
    " Can tab-complete filetype.
    command! F -nargs=1 -complete=filetype set filetype=<args>

    " Even quicker setting often-used filetypes.
    command! Ft set filetype=txt
    command! Fr set filetype=ruby
    command! Fr set filetype=python


