" vim:ft=vim:set foldlevel=9:


Plug 'vim-airline/vim-airline'

  " 1: Enable Smarter tab line: buffers in tab line
    let g:airline#extensions#tabline#enabled = 1
  " let g:airline#extensions#tabline#formatter = 'default'
  " let g:airline#extensions#tabline#formatter = 'unique_tail'
    let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
    let g:airline#extensions#tabline#show_buffers = 1
    let g:airline#extensions#tabline#show_splits = 1
  " let g:airline#extensions#tabline#left_sep = ' '
  " let g:airline#extensions#tabline#left_alt_sep = '|'
  "
    let g:airline#extensions#quickfix#quickfix_text = 'Quickfix'
    let g:airline#extensions#quickfix#location_text = 'Location'
  "
    let g:airline#extensions#fugitiveline#enabled = 1
    let g:airline#extensions#csv#enabled = 1
    let g:airline#extensions#virtualenv#enabled = 1


Plug 'vim-airline/vim-airline-themes'

  " My theme
  " :AirlineThme sol
    let g:airline_theme='sol'




