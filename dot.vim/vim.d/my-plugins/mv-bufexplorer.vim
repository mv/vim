
" vim:ft=vim:set foldlevel=9:

    Plug 'jlanzarotta/bufexplorer'

    " ,bt / ,be / ,bv / ,bs
    let g:bufExplorerDisableDefaultKeyMapping = 0    " Do not disable mapping.

    let g:bufExplorerFindActive       = 0     " Do not go to active window.

    let g:bufExplorerSortBy           ='mru'  " name,number,mru,fullpath,extension
    let g:bufExplorerSortBy           ='name' " name,number,mru,fullpath,extension
    let g:bufExplorerReverseSort      = 0

    let g:bufExplorerShowDirectories  = 1     " Show directories.
    let g:bufExplorerShowNoName       = 1     " Show 'No Name' buffers.
    let g:bufExplorerShowTabBuffer    = 1     " Show buffers from all tabs
    let g:bufExplorerShowUnlisted     = 1     " Do not show unlisted buffers.
    let g:bufExplorerSplitOutPathName = 1     " Split the path and file name.


    let g:bufExplorerSplitBelow       = 0     " Split new window below current.
    let g:bufExplorerSplitRight       = 1     " Split right.


    let g:bufExplorerDefaultHelp      = 1     " Show default help.
    let g:bufExplorerDetailedHelp     = 0     " Do not show detailed help.


