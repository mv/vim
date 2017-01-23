
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

    " Use smartcase.
    let g:neocomplete#enable_smart_case = 1


    " my mappings
    nmap <Leader>nc :NeoCompleteToggle<CR>
    nmap <Leader>ncc :NeoCompleteClean<CR>


    " Plugin key-mappings.
    inoremap <expr><C-g> neocomplete#undo_completion()
    inoremap <expr><C-l> neocomplete#complete_common_string()

    " <TAB>: completion.
    inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

    " <C-h>, <BS>: close popup and delete backword char.
    inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
    inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

    " Close popup by <Space>.
    inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

    " <CR>: close popup and save indent.
    inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
    function! s:my_cr_function()
      return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
      " For no inserting <CR> key.
      "return pumvisible() ? "\<C-y>" : "\<CR>"
    endfunction

    " Enable omni completion.
"   autocmd FileType python     setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType markdown   setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType html       setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType css        setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType xml        setlocal omnifunc=xmlcomplete#CompleteTags


    " Using Jedi for python completion
"   autocmd FileType python setlocal omnifunc=jedi#completions


