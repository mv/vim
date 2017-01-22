
" vim:ft=vim:set foldlevel=9:

"2017: Plugin 'wincent/Command-T'
    "      'wincent/Command-T'        " {
        let g:CommandTMaxFiles=20000
        let g:CommandTMinHeight=5
        let g:CommandTMatchWindowAtTop=1

        let g:CommandTAcceptSelectionSplitMap='<D-j>'
        let g:CommandTAcceptSelectionVSplitMap='<D-k>'
        let g:CommandTAcceptSelectionTabMap='<D-CR>'

"       nnoremap <silent> <Leader>t :CommandT<CR>
"       nnoremap <silent> <Leader>b :CommandTBuffer<CR>
        nnoremap <silent> <Leader>b :CommandTMRU<CR>
        nnoremap <silent> <Leader>ctf :CommandTFlush
        nnoremap <silent> <Leader>ctj :CommandTJump<CR>
        nnoremap <silent> <Leader>ctag :CommandTTag<CR>


