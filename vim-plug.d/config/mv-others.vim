
" vim:ft=vim:set foldlevel=9:

" Plugins
" ======
  " Tip:
  "     scriptnames     " List all sourced scripts

  """
  """ Themes:
  """
" Plug 'vim-scripts/wombat256.vim'

  """
  """ Best: of the best
  """

" Plug 'jiangmiao/auto-pairs'
" vim-syntastic/syntastic
" majutsushi/tagbar
" ycm-core/YouCompleteMe
" mattn/emmet-vim
"   https://www.smashingmagazine.com/2013/03/goodbye-zen-coding-hello-emmet/
" justinmk/vim-dirvish>
" svermeulen/vim-easyclip
" godlygeek/tabular
" terryma/vim-multiple-cursors
" flazz/vim-colorschemes
"   lucius


  Plug 'airblade/vim-gitgutter'

  Plug 'vim-scripts/AnsiEsc.vim'

  Plug 'mtth/scratch.vim'
  Plug 'ntpeters/vim-better-whitespace'

  Plug 'vim-scripts/Align'
  " DrChip's Align:
  "   :AlignCtrl =lp0P0I  separator '=', left, 0 spaces before, 0 after, ...
  "   :[range]Align =
  "   :[range]Align ' '
  "   :[range]Align '\ '

    let g:DrChipTopLvlMenu         = "Plugin."
    let g:alignnoremaps_euronumber = 1


  Plug 'chrisbra/Recover.vim'
  Plug 'chrisbra/csv.vim'
    let g:airline#extensions#csv#column_display = 'Name' 

