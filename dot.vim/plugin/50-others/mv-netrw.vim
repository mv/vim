
" vim:ft=vim:set foldlevel=9:

    " netrw
    "------
    " In the current file location
    "-----------------------------
    "
    "   In-place: open in the current file window
    "     :[N]Explore[!]  [dir]... Explore directory of current file 
    "  
    "   Split in a new window
    "     :[N]Sexplore[!] [dir]... Horizontal Split & Explore        
    "     :[N]Hexplore[!] [dir]... Horizontal Split & Explore        
    "     :[N]Vexplore[!] [dir]... Vertical   Split & Explore        
    "     :Texplore       [dir]... Tab & Explore                     
    "     :Rexplore            ... Return to/from Explorer           
    "
    " In the root dir
    "----------------
    "   :[N]Lexplore[!] [dir]... Left Explorer Toggle             
    " 
    "   :Explore **/pattern 
    "     :Nexplore............. go to next matching file               
    "     :Pexplore............. go to previous matching file           


    " Settings:
    "   Visual settings
    " 0: on 
    " 1: off
    " let g:loaded_netrw       = 1
    " let g:loaded_netrwPlugin = 1
    " let g:netrw_keepdir      = 1

    let g:netrw_banner    = 1
    let g:netrw_timefmt   = '%F %H:%M'
    let g:netrw_sizestyle = 'H' 
    let g:netrw_sort_sequence = '[\/]$,*'
    let g:netrw_winsize = 25
    let g:netrw_wiw = 10
    " set cul/cuc
    let g:netrw_cursor    = 4
    " 0: thin: file list 1 per line
    " 1: long: file + size + time
    " 2: wide: list
    " 3: tree
    let g:netrw_liststyle = 3

    let g:netrw_usetab = 1


    " Mappings:
    "   open Explore window
    map <leader>exl  :Lexplore<CR>
    map <leader>ext  :Texplore<CR>

    " Options:
    "   open a new file
    " <cr>
    " 1: horizontal: split below
    " 2: vertical:   split right
    " 3: new tab
    let g:netrw_browse_split = 2

    " <o>: horizontal split 
    " 0: horizontal: split above
    " 1: horizontal: split below
    let g:netrw_alto = 1

    " <v>: vertical split 
    " 0: vertical: split left
    " 1: vertical: split right
    let g:netrw_altv = 1

    " <p>: preview: open file, keep cursor in browse
    " 0: horizontal: split above
    " 1: vertical: split left
    let g:netrw_preview = 1

    " <t>: new tab: open file in a new tab, window size

