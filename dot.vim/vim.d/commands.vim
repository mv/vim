
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


" vim: set foldlevel=9

