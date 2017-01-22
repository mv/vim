
" vim:ft=vim:set foldlevel=9:

" Complete options
"
" https://www.slant.co/versus/11807/11808/~youcompleteme_vs_neocomplete
"     https://github.com/Shougo/neocomplete.vim
"
"     https://val.markovic.io/articles/youcompleteme-a-fast-as-you-type-fuzzy-search-code-completion-engine-for-vim
"     https://github.com/Valloric/YouCompleteMe
"
"     https://github.com/ervandew/supertab
"     https://github.com/ajh17/VimCompletesMe
"


   Plugin 'Shougo/neocomplete.vim'

    " must enable it
	  let g:neocomplete#enable_at_startup = 1

    nmap <Leader>nc :NeoCompleteToggle<CR>
    nmap <Leader>ncc :NeoCompleteClean<CR>



