
" Plugins
" ================
    " Tip:
    "     scriptnames     " List all sourced scripts

    """
    """ test
    """
"   Bundle 'Valloric/YouCompleteMe'
"   Bundle 'majutsushi/tagbar'
    Bundle 'tyru/open-browser.vim'

    Bundle 'vimscripts/SQLUtilities'
    "      'vimscripts/SQLUtilities'    {{{

      let g:sqlutil_align_comma = 1
      let g:sqlutil_align_first_word = 1
      let g:sqlutil_align_keyword_right = 1
      let g:sqlutil_keyword_case = '\U'

    " }}}

"   Bundle 'vimscripts/dbext'

    Bundle 'nvie/vim-flake8'
    "      'nvie/vim-flake8'          " {{{

        let g:flake8_cmd="/usr/local/bin/flake8"
        let g:flake8_quickfix_height=7
        let g:flake8_show_quickfix=1
        let g:flake8_show_in_gutter=1
        let g:flake8_show_in_file=1

    "}}}


    """
    """ Takeshi Nishida
    """
    Bundle 'L9'
    Bundle 'AutoComplPop'
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

    """
    """ Dr. Chip's
    """
    Bundle 'AnsiEsc.vim'
    Bundle 'Align'
    "      'Align'                    " {{{
        let g:DrChipTopLvlMenu         = "Plugin."
        let g:alignnoremaps_euronumber = 1
    " }}}

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

    """
    """ Tim Pope
    """
    Bundle 'tpope/vim-repeat'
    Bundle 'tpope/vim-surround'
    Bundle 'tpope/vim-endwise'
    Bundle 'tpope/vim-unimpaired'
    Bundle 'tpope/vim-eunuch'
    Bundle 'tpope/vim-fugitive'
    "      'tpope/vim-fugitive'       " {{{

        " git add %
        map <leader>gw :Gwrite
        " git checkout % (revert to previous checked version)
        map <leader>gr :Gread

        " git mv %
        map <leader>gmv :Gmove
        " git rm %
        map <leader>grm :Gremove

        map <leader>gd :Gdiff<CR>
        map <leader>gs :Gstatus<CR>

        map <leader>gc :Gcommit<CR>
        map <leader>gb :Gblame<CR>

        " on diff
        map <leader>dg :diffget<CR>
        map <leader>dp :diffput<CR>

        " wipeout fugitive extra buffers
        autocmd BufReadPost fugitive://* set bufhidden=delete

    " }}}
    Bundle 'tpope/vim-speeddating'
    "      'tpope/vim-speeddating'    " {{{
        let g:speeddating_no_mappings = 0
    " }}}

    " gc/gcc/gcap:
    Bundle 'tpope/vim-commentary'

"   Bundle 'vim-ruby/vim-ruby'
"   Bundle 'tpope/vim-rails'
"   Bundle 'tpope/vim-bundler'

    Bundle 'tpope/vim-projectionist'
    Bundle 'tpope/vim-rake'
    "      'tpope/vim-rake'             {{{
    "
       "let g:loaded_rake = 1
        set makeprg=rake
    " }}}

"   Bundle 'tpope/vim-scriptease'
"   Bundle 'tpope/vim-sensible'

    Bundle 'tpope/vim-markdown'
    Bundle 'nelstrom/vim-markdown-preview'
    "      'nelstrom/vim-markdown-preview'     {{{
    nnoremap <silent> <Leader>mm :Mm<CR>
    "
    "
    "      }}}


    """
    """ Martin Greffel
    """
    Bundle 'scrooloose/nerdtree'
    "      'scrooloose/nerdtree'      " {{{

"       let loaded_nerd_tree=0
        let NERDTreeCaseSensitiveSort = 1
""      let NERDTreeChDirMode         = 0
        let NERDTreeIgnore            = ['\.[ao]$','\.sw?$','\.DS_Store','\.svn','\.CVS','\.git','\.pdf','\.xls','\.ods']
        let NERDTreeRespectWildIgnore = 1
""      let NERDTreeMouseMode         = 3
        let NERDTreeShowLineNumbers   = 1
        let NERDTreeShowHidden        = 0
""      let NERDTreeWinSize           = 30
        let NERDTreeHijackNetrw       = 1

        map <leader>nn :NERDTreeToggle <CR> " Dir tree
        map <leader>nm :NERDTreeMirror <CR> " Dir tree
        map <leader>no :NERDTree . <CR>   " Tree Open
        map <leader>nc :NERDTreeClose<CR> " Tree Close
    " }}}

    """
    """ Lokaltog
    """
"   Bundle 'Lokaltog/vim-easymotion'

    """
    """ best of the best
    """
    Bundle 'airblade/vim-gitgutter'

    Bundle 'wincent/Command-T'
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

    Bundle 'nathanaelkane/vim-indent-guides'
    "      'nathanaelkane/vim-indent-guides' {{{

        let g:indent_guides_enable_on_vim_startup = 1
        let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

        let g:indent_guides_indent_levels = 30
        let g:indent_guides_guide_size = 4
        let g:indent_guides_default_mapping = 1
      " :nmap <silent> <Leader>ig <Plug>IndentGuidesToggle

    " }}}

    Bundle 'terryma/vim-multiple-cursors'
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

    Bundle 'elzr/vim-json'
    "      'elzr/vim-json'            " {
        let g:vim_json_syntax_conceal=0
        set conceallevel=0
    " }

    " just like vimgrep.... :Ack and :Ag
    Bundle 'mileszs/ack.vim'
    Bundle 'rking/ag.vim'
    "      'rking/ag.vim' {{{

      " let g:agprg="<custom-ag-path-goes-here> --column"

    " }}}

    " auto-close stuff: pick one
"   Bundle 'jiangmiao/auto-pairs'
    Bundle 'Raimondi/delimitMate'

    """
    """ Others....
    """
    Bundle 'sudo.vim'

    Bundle 'bufexplorer.zip'
    "      'bufexplorer.zip'                 " {{{

        " ,be / ,bv / ,bs
        let g:bufExplorerReverseSort     = 0
        let g:bufExplorerShowUnlisted    = 1    " Do not show unlisted buffers.
        let g:bufExplorerSortBy          ='fullpath' " name,number,mru,fullpath,extension
        let g:bufExplorerShowDirectories = 1    " Show directories.
        let g:bufExplorerFindActive      = 0    " Do not go to active window.
        let g:bufExplorerShowDirectories = 0    " Don't show directories.
        let g:bufExplorerSplitBelow      = 1    " Split new window below current.
        let g:bufExplorerSplitRight      = 1    " Split right.

    " }}}

"   Bundle 'vim-scripts/taglist.vim'
    "      'vim-scripts/taglist.vim' {{{
        " let loaded_taglist = 1 " 0: activate / 1: do not load
          let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
          let Tlist_File_Fold_Auto_Close = 1
          let Tlist_Show_Menu = 1

        " map <leader>t   :TlistToggle     <CR>
        " map <leader>ts  :TlistSessionSave ~/.tlistsession.vim.tag <CR>
        " map <leader>tl  :TlistSessionLoad ~/.tlistsession.vim.tag <CR>
    " }}}


    """
    """ Built in
    """
    " spec.vim: rpm spec files
    " spec.vim:                 {{{
    let spec_chglog_format = "%Y-%m-%d - Marcus Vinicius Ferreira <ferreira.mv@gmail.com>"
    let spec_chglog_prepend = 1
    let spec_chglog_release_info = 1
"   map <buffer> <LocalLeader>c <Plug>SpecChangelog
    " }}}

    " TOhtml
    " TOhtml                    {{{

    let g:html_use_encoding = 'UTF-8'
    let g:html_ignore_folding = 1

    " }}}

    " netrw
    " netrw                     {{{
    "   0: on, 1: off
   "let g:loaded_netrw       = 1
   "let g:loaded_netrwPlugin = 1
    let g:netrw_liststyle    = 0
   "let g:netrw_winsize      = 50

    " 'p': preview windows split horizontally/vertically
   "let g:netrw_preview      = 0

    " horizontal split: above or below ?
    "et g:netrw_alto         = 1
    " vertical split: left or right ?
    "et g:netrw_altv         = 1

    "et g:netrw_banner       = 1
   "let g:netrw_browse_split = 3
    let g:netrw_cursor       = 4
    "et g:netrw_home         = "~"
    "et g:netrw_keepdir      = 1
    let g:netrw_timefmt      = '%F %H:%M'
    let g:netrw_sort_sequence = '[\/]$,*'
    " }}}


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


    """
    """ Mine
    """
    Bundle 'mv/mv-vim-monit'
    Bundle 'mv/mv-vim-nagios'
    Bundle 'mv/mv-vim-nginx'
    Bundle 'mv/mv-vim-puppet'
"   Bundle 'mv/mv-snipmate-snippets'
    Bundle 'mv/vim-ir_black3'


    """
    """ Themes
    """
    Bundle 'wombat256.vim'
    Bundle 'peaksea'

    """
    """ Syntax only
    """
    Bundle 'pf.vim'
    Bundle 'vim-scripts/iptables'
    Bundle "motus/pig.vim"


" vim: set foldlevel=9

