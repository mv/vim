
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
    command! -nargs=1 -complete=filetype F set filetype=<args>

    " Even quicker setting often-used filetypes.
    command! Fr set filetype=ruby
    command! Ft set filetype=txt


