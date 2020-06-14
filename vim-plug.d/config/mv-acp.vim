" vim:ft=vim:set foldlevel=9:


Plug 'mileszs/ack.vim'

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

