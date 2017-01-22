
" vim:ft=vim:set foldlevel=9:


"2017: Plugin 'terryma/vim-multiple-cursors'
"          'terryma/vim-multiple-cursors' {{{

        let g:multi_cursor_use_default_mapping=0

        " Default mapping
        "let g:multi_cursor_next_key='<C-n>'
        "let g:multi_cursor_prev_key='<C-p>'
        "let g:multi_cursor_skip_key='<C-x>'
        "let g:multi_cursor_quit_key='<Esc>'

        let g:multi_cursor_exit_from_visual_mode = 1
        let g:multi_cursor_exit_from_insert_mode = 1

        " Default highlighting (see help :highlight and help :highlight-link)
        highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
        highlight link multiple_cursors_visual Visual


