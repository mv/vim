
" Commands
" ================

    " Shortcuts
    command! W  :w
    command! WW :browse confirm saveas
    command! WQ :wq
    command! Q  :q

    command! Rehash     source $MYVIMRC

    " On/Off
    " start/stop sharing OS clipboard
    command! Clipon     set clipboard+=unnamed
    command! Clipoff    set clipboard-=unnamed

    " tab to spaces to tab
    command! TabOn      set noexpandtab|retab!
    command! TabOff     set expandtab|retab!

    """
    """ FileTypes:
    """

    " Ref: https://github.com/henrik/dotfiles/blob/master/vimrc#L217-226
    " Quicker filetype setting:
    "   :F html
    " instead of
    "   :set ft=html
    " Can tab-complete filetype.
    command! -nargs=1 -complete=filetype F set filetype=<args>

    " Even quicker setting often-used filetypes.
    command! FR set filetype=ruby
    command! FS set filetype=sql
    command! FT set filetype=txt


" vim: set foldlevel=9

