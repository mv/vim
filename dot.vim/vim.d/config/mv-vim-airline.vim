" vim:ft=vim:set foldlevel=9:


Plug 'vim-airline/vim-airline'

  " ??
  "let g:airline_powerline_fonts = 1

  " replicate on top
" let g:airline_statusline_ontop=1
 
  " CtrlP colors
  let g:airline#extensions#ctrlp#color_template = 'replace' 

  " 1: Enable Smarter tab line: buffers in tab line
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#formatter = 'unique_tail'
  let g:airline#extensions#tabline#show_buffers = 1
  let g:airline#extensions#tabline#show_splits  = 1
  let g:airline#extensions#tabline#left_sep = '▶'
  let g:airline#extensions#tabline#left_alt_sep = '|'

  "
  let g:airline#extensions#quickfix#quickfix_text = 'Quickfix'
  let g:airline#extensions#quickfix#location_text = 'Location'

  "
" let g:airline#extensions#virtualenv#enabled = 1

  " fugitive.vim <https://github.com/tpope/vim-fugitive>
  let g:airline#extensions#fugitiveline#enabled = 1

  " csv.vim <https://github.com/chrisbra/csv.vim>
" let g:airline#extensions#csv#enabled = 1

  " ctrlp <https://github.com/ctrlpvim/ctrlp.vim>
" let g:airline#extensions#ctrlp#show_adjacent_modes = 1

  " cursormode <https://github.com/vheon/vim-cursormode>
" let g:airline#extensions#cursormode#enabled = 1

  " help-topic: airline-customization
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '◀'

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
  

