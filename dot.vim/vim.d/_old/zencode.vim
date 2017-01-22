
" vim:ft=vim:set foldlevel=9:


"   Plugin 'mattn/zencoding-vim'
    "      'mattn/zencoding-vim'      " {{{

        " Turn it off:
        " let g:loaded_zencoding_vim = 1

        let g:user_zen_complete_tag = 0
        let g:user_zen_leader_key  = '<c-y>'

        " let g:user_zen_balancetagoutward_key = 'ta'
        " let g:user_zen_balancetaginward_key  = 'ti'
        " let g:user_zen_prev_key              = 'p'
        " let g:user_zen_removetag_key         = 'd'

        " Default Mappings
        " let g:user_zen_expandabbr_key         [ , ]
        " let g:user_zen_expandword_key         [ , ]
        " let g:user_zen_balancetagoutward_key  [ D ]
        " let g:user_zen_balancetaginward_key   [ d ]
        " let g:user_zen_next_key               [ n ]
        " let g:user_zen_prev_key               [ N ]
        " let g:user_zen_imagesize_key          [ i ]
        " let g:user_zen_togglecomment_key      [ / ]
        " let g:user_zen_splitjointag_key       [ j ]
        " let g:user_zen_removetag_key          [ k ]
        " let g:user_zen_anchorizeurl_key       [ a ]
        " let g:user_zen_anchorizesummary_key   [ A ]

        let g:user_zen_settings = {
            \  'html' : {
            \    'filters' : 'html, c',
            \    'indentation' : '    '
            \  },
            \  'css' : {
            \    'filters' : 'html, fc',
            \    'indentation' : '  '
            \  },
            \  'xml' : {
            \    'extends' : 'html',
            \    'indentation' : '    '
            \  },
            \  'haml' : {
            \    'extends' : 'html',
            \  },
            \  'php' : {
            \    'extends' : 'html',
            \    'filters' : 'c',
            \    'indentation' : '    '
            \  },
            \}

    " }}}
