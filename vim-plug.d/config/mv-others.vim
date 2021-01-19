
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
  " help scratch.txt
  "

" let g:scratch_disable = 1
  let g:scratch_top = 1
  let g:scratch_height = 15
  let g:scratch_horizontal = 1
  let g:scratch_persistence_file = '~/vim.scratch.md'
  let g:scratch_filetype = 'markdown'

  "
  " mappings: do not use 'clear' option
  let g:scratch_no_mappings = 1
  nmap <leader>gs <plug>(scratch-insert-reuse)
  nmap <leader>gS <plug>(scratch-insert-reuse)
  xmap <leader>gs <plug>(scratch-selection-reuse)
  xmap <leader>gS <plug>(scratch-selection-reuse)

" let g:scratch_autohide = &hidden
  " Automatically close scratch buffer window when leaving insert-mode.
  let g:scratch_insert_autohide = 0



  Plug 'ntpeters/vim-better-whitespace'
  " :help better-whitespace
  "
  " let g:better_whitespace_enabled = 0
  
    " My default: always strip
    let g:strip_whitespace_on_save = 1
    let g:strip_whitespace_confirm = 0
  
    let g:better_whitespace_filetypes_blacklist =
          \ ['diff', 'gitcommit', 'unite', 'qf', 'help', 'markdown']
  
    let g:better_whitespace_ctermcolor = 'red'
  " let g:better_whitespace_guicolor   = '#FF0000' " red
  " let g:better_whitespace_guicolor   = '#2aa198' " cyan
    let g:better_whitespace_guicolor   = '#586e75' " base01
  

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

