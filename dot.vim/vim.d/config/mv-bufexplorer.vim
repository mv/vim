
" vim:ft=vim:set foldlevel=9:

    Plug 'jlanzarotta/bufexplorer'

    " ,bt / ,be / ,bv / ,bs
    let g:bufExplorerDisableDefaultKeyMapping = 0    " Do not disable mapping.

    let g:bufExplorerFindActive       = 0     " Do not go to active window.

    let g:bufExplorerSortBy           ='name' " name,number,mru,fullpath,extension
    let g:bufExplorerReverseSort      = 0

    " Show buffers only for the specific tab
    let g:bufExplorerShowTabBuffer    = 0

    let g:bufExplorerShowDirectories  = 1
    let g:bufExplorerShowNoName       = 1
    let g:bufExplorerShowUnlisted     = 0
    let g:bufExplorerSplitOutPathName = 1
    let g:bufExplorerShowRelativePath = 1


    let g:bufExplorerSplitBelow       = 0
    let g:bufExplorerSplitRight       = 1


    let g:bufExplorerDefaultHelp      = 1
    let g:bufExplorerDetailedHelp     = 1


