
" vim:ft=vim:set foldlevel=9:

Plug 'scrooloose/nerdtree'

" let loaded_nerd_tree=0

  let NERDTreeCaseSensitiveSort = 1
  let NERDTreeIgnore            = ['\.[ao]$','\.sw?$','\.DS_Store','\.svn','\.CVS','\.git','\.pdf','\.xls','\.ods']
  let NERDTreeRespectWildIgnore = 1
  let NERDTreeShowLineNumbers   = 0
  let NERDTreeShowHidden        = 0
  let NERDTreeHijackNetrw       = 1

  let NERDTreeChDirMode         = 1
  let NERDTreeWinSize           = 30

  map <leader>nn :NERDTreeToggle <CR> " Dir tree
  map <leader>nm :NERDTreeMirror <CR> " Dir tree


"Plug 'jistr/vim-nerdtree-tabs'
"
" map <Leader>nn <plug>NERDTreeTabsToggle<CR>
" map <leader>nm <plug>NERDTreeMirrorToggle<CR>
"
" " 0: disable
" " 1: enable
" let g:nerdtree_tabs_open_on_gui_startup = 1
" let g:nerdtree_tabs_open_on_console_startup = 0
" let g:nerdtree_tabs_no_startup_for_diff = 1


