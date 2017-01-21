" gvim: dot.gvimrc
" mvf: ferreira.mv[ at ]gmail.com
" -------------------------------

" vim: set foldmarker={,} foldlevel=0 nospell:

"set nopaste     " default: gvim detects paste from type

"set listchars=tab:▸\ ,trail:·,eol:¬,extends:>,precedes:<
"set showbreak=…


" after: set my colors
if g:mv_StatusLineHighlight == 0
  " 2017: source ~/.vim/vim.d/status_line.vim
  call StatusLineHL()
endif

