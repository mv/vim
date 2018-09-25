
" vim:ft=vim:set foldlevel=9:


" Pre-req
"   Jedi: python static analysis lib + python autocomplete
"         pip3 install jedi
"

"Plug 'davidhalter/jedi-vim'

"   let g:pymode_python = 'python3'

    " Using Jedi for python completion
"   autocmd FileType python setlocal omnifunc=jedi#completions

    let g:jedi#completions_enabled    = 0
    let g:jedi#auto_vim_configuration = 0
    let g:jedi#smart_auto_mappings    = 0

"   let g:neocomplete#force_omni_input_patterns.python =
"       \ '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
"   " alternate
"   " let g:neocomplete#force_omni_input_patterns.python = '[^. \t]\.\w*'


