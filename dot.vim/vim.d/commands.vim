
" Commands
" ================

    """
    """ Typos:
    """
"   command! W    :w
"   command! Wall :wall
    command! WQ :wq!
    command! QA :qall!

    """
    """ Shortcuts:
    """
    command! WW :browse confirm saveas
    command! Rehash source $MYVIMRC

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
    command! Fr set filetype=ruby
    command! Fs set filetype=sh
    command! Ft set filetype=txt
    command! Fj set filetype=javascript


" vim: set foldlevel=9

