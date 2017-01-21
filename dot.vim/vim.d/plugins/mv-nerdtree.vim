" vim: set foldlevel=9

    Bundle 'scrooloose/nerdtree'
    "      'scrooloose/nerdtree'      "

"       let loaded_nerd_tree=0
        let NERDTreeCaseSensitiveSort = 1
        let NERDTreeIgnore            = ['\.[ao]$','\.sw?$','\.DS_Store','\.svn','\.CVS','\.git','\.pdf','\.xls','\.ods']
        let NERDTreeRespectWildIgnore = 1
        let NERDTreeShowLineNumbers   = 1
        let NERDTreeShowHidden        = 0
        let NERDTreeHijackNetrw       = 1
""      let NERDTreeChDirMode         = 0
""      let NERDTreeMouseMode         = 3
""      let NERDTreeWinSize           = 30

        map <leader>nn :NERDTreeToggle <CR> " Dir tree
        map <leader>nm :NERDTreeMirror <CR> " Dir tree

    " }}}

