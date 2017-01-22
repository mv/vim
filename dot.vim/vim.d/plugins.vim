" vim: set foldlevel=9

" Plugins
" ================
    " Tip:
    "     scriptnames     " List all sourced scripts

    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    """
    """ Themes
    """
    Bundle 'wombat256.vim'


    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    """
    """ Syntax only
    """
    Bundle "motus/pig.vim"


    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    """
    """ best of the best
    """
    Bundle 'airblade/vim-gitgutter'
    Bundle 'mileszs/ack.vim'
    Bundle 'AnsiEsc.vim'
    Bundle 'Align'
    "      'Align'                    "
        let g:DrChipTopLvlMenu         = "Plugin."
        let g:alignnoremaps_euronumber = 1
    " }}}

"   Bundle 'Lokaltog/vim-easymotion'


    """
    """ Others....
    """
"2017: Bundle 'sudo.vim'



    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    """
    """ Off...
    """
    " enhancedjumps.vim         {{{
        " Turn it off:
        " let g:loaded_EnhancedJumps = 1

        " msg timout: 2s (2000 ms)
        let g:stopFirstAndNotifyTimeoutLen = 2000
    " }}}
    " LargeFile                 {{{
        " in megabytes - :Large/:Unlarge
        let g:LargeFile= 200
    " }}}
    " searchcomplete            {{{
        " Turn it off:
        " let loaded_search_complete = 1
    " }}}
    " SQLUtilities              {{{
        " Turn it off:
        " let g:loaded_sqlutilities = 1

        " let g:sqlutil_align_where = 1
        " let g:sqlutil_align_comma = 1
        " let g:sqlutil_align_first_word = 1
        " let g:sqlutil_align_keyword_right = 1
        " let g:sqlutil_keyword_case = '\U'

        " 0: do not create maps
        " let g:sqlutil_load_default_maps = 0

        " vmap <leader>sf        <Plug>SQLU_Formatter<CR>
        " nnoremap <leader>scl       <Plug>SQLU_CreateColumnList<CR>
        " nnoremap <leader>scd       <Plug>SQLU_GetColumnDef<CR>
        " nnoremap <leader>scdt      <Plug>SQLU_GetColumnDataType<CR>
        " nnoremap <leader>scp       <Plug>SQLU_CreateProcedure<CR>
    " }}}
    " textformat.vim            {{{
        " Turn it off:
        " let g:loaded_textformat = 1
    " }}}


    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    """
    """ test
    """
"   Bundle 'Valloric/YouCompleteMe'
"   Bundle 'majutsushi/tagbar'
"2017: Bundle 'tyru/open-browser.vim'

"2017: Bundle 'vimscripts/SQLUtilities'
    "      'vimscripts/SQLUtilities'    {{{

      let g:sqlutil_align_comma = 1
      let g:sqlutil_align_first_word = 1
      let g:sqlutil_align_keyword_right = 1
      let g:sqlutil_keyword_case = '\U'

    " }}}

"   Bundle 'vimscripts/dbext'

"2017: Bundle 'nvie/vim-flake8'
    "      'nvie/vim-flake8'          " {{{

        let g:flake8_cmd="/usr/local/bin/flake8"
        let g:flake8_quickfix_height=7
        let g:flake8_show_quickfix=1
        let g:flake8_show_in_gutter=1
        let g:flake8_show_in_file=1

    "}}}


    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    """
    """ Takeshi Nishida
    """
"2017: Bundle 'L9'
"2017: Bundle 'AutoComplPop'
    "      'AutoComplPop'             " {{{

    " Disable AutoComplPop.
"       let g:acp_enableAtStartup        = 0

        let g:acp_mappingDriven          = 0
        let g:acp_ignorecaseOption       = 1
        let g:acp_behaviorKeywordLength  = 2
        let g:acp_behaviorFileLength     = 0

        let g:acp_behavior = {'repeat': 1}

        " nnoremap <leader>ae :AcpEnable <CR>
        " nnoremap <leader>ad :AcpDisable <CR>
        " nnoremap <leader>al :AcpLock <CR>
        " nnoremap <leader>au :AcpUnlock <CR>

    " }}}


"2017: Bundle 'wincent/Command-T'
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
    " }

"2017: Bundle 'terryma/vim-multiple-cursors'
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

"   }}}

"   Bundle 'mattn/zencoding-vim'
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

"2017: Bundle 'elzr/vim-json'
    "      'elzr/vim-json'            " {
        let g:vim_json_syntax_conceal=0
        set conceallevel=0
    " }


"2017: Bundle 'tpope/vim-markdown'
"2017: Bundle 'nelstrom/vim-markdown-preview'
    "      'nelstrom/vim-markdown-preview'     {{{
    nnoremap <silent> <Leader>mm :Mm<CR>
    "
    "
    "      }}}
    "

    " auto-close stuff: pick one
"   Bundle 'jiangmiao/auto-pairs'
"2017: Bundle 'Raimondi/delimitMate'
"

    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    """
    """ Mine
    """
"   Bundle 'mv/mv-snipmate-snippets'
"2017: Bundle 'mv/mv-vim-monit'
"2017: Bundle 'mv/mv-vim-nagios'
"2017: Bundle 'mv/mv-vim-nginx'
"2017: Bundle 'mv/mv-vim-puppet'
"2017: Bundle 'mv/vim-ir_black3'

    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    """
    """ Dr. Chip's
    """
    "undle 'Bash-support'
    "      'Bash-support'               {{{

        " Turn it off:
        let g:BASH_Version = 'OFF'

        let g:BASH_Root = 'B&ash.'         " original
        let g:BASH_Root = '&Plugin.B&ash.' " mine.
        "let g:BASH_MapLeader               '\'
        "let g:BASH_Errorformat             '%f:\ line\ %l:\ %m'

        if ! len(glob( $HOME.'/.vim/bundle/bash-support/' ))
            let g:BASH_Support_Root_Dir        = $HOME.'/.vim/bundle/'
        endif

        " let g:BASH_Support_Root_Dir        = '/codework/bash/'
        if ! len(glob("/codework/bash/"))
            let g:BASH_GlobalTemplateFile      = '/codework/bash/templates'
            let g:BASH_LocalTemplateFile       = '/codework/bash/templates'
            let g:BASH_CodeSnippets            = '/codework/bash/snippets'
        "let g:BASH_Dictionary_File         = '/codework/bash/bash.dict.txt'
        endif

    " }}}

    "undle 'Bash-support'
    "      'Perl-support'               {{{
        " Turn it off:
        let g:Perl_Version = 'OFF'

        let g:Perl_Root = '&Perl.'          " original
        let g:Perl_Root = '&Plugin.&Perl.'  " mine.
    "let g:Perl_Printheader             = "%<%f%h%m%<  %=%{strftime('%x %X')}     Page %N"
    "let g:Perl_PerlcriticSeverity      = 5
    "let g:Perl_PerlcriticVerbosity     = 5
    "let g:Perl_PerlcriticOptions       = ""
    "let g:Perl_PerlRegexSubstitution   = '$+'
    "let g:Perl_MapLeader               = '\'

        if ! len(glob( $HOME.'/.vim/bundle/perl-support/' ))
            let g:Perl_Support_Root_Dir        = $HOME.'/.vim/bundle/perl-support'
        endif

        if ! len(glob("/codework/perl/"))
            let g:Perl_GlobalTemplateFile      = '/codework/perl/templates.pl'
            let g:Perl_LocalTemplateFile       = '/codework/perl/templates.pl'
            let g:Perl_CodeSnippets            = '/codework/perl/snippets.pl'
            let g:Perl_Dictionary_File         = '/codework/perl/perl.dict.txt'
            let g:Perl_PerlModuleList          = '/codework/perl/perl.list.txt'
            let g:Perl_PerlModuleListGenerator = '/codework/perl/perl.list.txt'
        endif
    " }}}


