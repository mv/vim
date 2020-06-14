" vim:ft=vim:set foldlevel=9:


Plug 'vim-airline/vim-airline'

  " Disable: globally
" let g:airline_disable_statusline = 1

  " Separators:
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '◀'

  " Extensions:
  " an empty list disables all extensions
" let g:airline_extensions = []
  " or only load what you want
" let g:airline_extensions = ['branch', 'tabline']

  " 1: tabline: buffers in tab line
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#formatter = 'short_path'
  let g:airline#extensions#tabline#show_buffers = 1
  let g:airline#extensions#tabline#show_splits  = 1
  let g:airline#extensions#tabline#tab_nr_type = 2 " splits and tab number
  let g:airline#extensions#tabline#show_close_button = 0
  let g:airline#extensions#tabline#left_sep = '▶'
  let g:airline#extensions#tabline#left_alt_sep = '|'

  " 2: ctrlp <https://github.com/ctrlpvim/ctrlp.vim>
  let g:airline#extensions#ctrlp#color_template = 'replace' 
" let g:airline#extensions#ctrlp#show_adjacent_modes = 1

  " 3: quickfix
" let g:airline#extensions#quickfix#quickfix_text = 'Quickfix'
" let g:airline#extensions#quickfix#location_text = 'Location'

  " 4: fugitive.vim <https://github.com/tpope/vim-fugitive>
  let g:airline#extensions#fugitiveline#enabled = 1

  " 5: csv.vim <https://github.com/chrisbra/csv.vim>
  let g:airline#extensions#csv#enabled = 1
  let g:airline#extensions#csv#column_display = 'Name' 

  " 6: python virtualenv
" let g:airline#extensions#virtualenv#enabled = 1
 

  " Custom:
  " help-topic: airline-customization
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
  let g:airline_symbols.crypt = '🔒'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.maxlinenr = '㏑'
  let g:airline_symbols.maxlinenr = '|'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.dirty='⚡'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.spell = 'Ꞩ'
  let g:airline_symbols.notexists = 'Ɇ'
  let g:airline_symbols.whitespace = 'Ξ'
  

