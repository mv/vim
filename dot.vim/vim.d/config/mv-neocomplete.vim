
" vim:ft=vim:set foldlevel=9:

" Complete options
"
" https://www.slant.co/versus/11807/11808/~youcompleteme_vs_neocomplete
"     https://github.com/Shougo/neocomplete.vim
"
"     https://val.markovic.io/articles/youcompleteme-a-fast-as-you-type-fuzzy-search-code-completion-engine-for-vim
"     https://github.com/Valloric/YouCompleteMe
"
"     https://github.com/ajh17/VimCompletesMe
"

  Plug 'Shougo/neocomplete.vim'

    " must enable it
	  let g:neocomplete#enable_at_startup = 1

    " behavior
    let g:neocomplete#enable_auto_select = 0

    let g:neocomplete#enable_ignore_case = 1
    let g:neocomplete#enable_smart_case  = 1
    let g:neocomplete#enable_camel_case  = 1
    let g:neocomplete#enable_fuzzy_completion = 1


" 	let g:neocomplete#sources._ = ['buffer']

    " my mappings
    nmap <Leader>nc :NeoCompleteToggle<CR>
    nmap <Leader>ncc :NeoCompleteClean<CR>

    """
    """ Terminal mappings
    """
    " <TAB>: completion.
    inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

    " Enable omni completion.
"   autocmd FileType python     setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType markdown   setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType html       setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType css        setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType xml        setlocal omnifunc=xmlcomplete#CompleteTags


    " Using Jedi for python completion
"   autocmd FileType python setlocal omnifunc=jedi#completions


