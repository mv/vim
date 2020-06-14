
" vim:ft=vim:set foldlevel=9:

Plug 'scrooloose/nerdtree'

  " 0: Disable NerdTree
  " let loaded_nerd_tree=0

    let NERDTreeCaseSensitiveSort = 1
    let NERDTreeIgnore            = ['\.[ao]$','\.sw?$','\.DS_Store','\.svn','\.CVS','\.git','\.pdf','\.xls','\.ods']
    let NERDTreeRespectWildIgnore = 1

    let NERDTreeWinSize         = 30
    let NERDTreeShowLineNumbers = 0
    let NERDTreeShowHidden      = 0
    let NERDTreeShowBookmarks   = 1

    let NERDTreeHijackNetrw = 1
    let NERDTreeChDirMode   = 0

    map <leader>nn :NERDTreeToggle <CR>
    map <leader>nm :NERDTreeMirror <CR>


Plug 'Xuyuanp/nerdtree-git-plugin'

  " Symbols
    let g:NERDTreeIndicatorMapCustom = {
        \ "Modified"  : "✹",
        \ "Staged"    : "✚",
        \ "Untracked" : "✭",
        \ "Renamed"   : "➜",
        \ "Unmerged"  : "═",
        \ "Deleted"   : "✖",
        \ "Dirty"     : "✗",
        \ "Clean"     : "✔︎",
        \ 'Ignored'   : '☒',
        \ "Unknown"   : "?"
        \ }

