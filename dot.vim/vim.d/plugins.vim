
" Plugins
" ================
    " Tip:
    "     scriptnames     " List all sourced scripts

    """
    """ Mine
    """
    Bundle 'mv/vim-ir_black3'
    Bundle 'mv/mv-snipmate-snippets'
    Bundle 'mv/mv-vim-monit'
    Bundle 'mv/mv-vim-nagios'
    Bundle 'mv/mv-vim-nginx'
    Bundle 'mv/mv-vim-puppet'


    """
    """ Themes
    """
    Bundle 'tpope/vim-vividchalk'
    Bundle 'wombat256.vim'
    Bundle 'molokai'
    Bundle 'peaksea'

    """
    """ Syntax only
    """
    Bundle 'pf.vim'
    Bundle 'vim-scripts/iptables'
"   Bundle 'JSON.vim'
"   Bundle 'hoffstein/vim-tsql'


    """
    """ Takeshi Nishida
    """
"   Bundle 'L9'
"   Bundle 'AutoComplPop'
    "      'AutoComplPop'             " {{{

    " Disable AutoComplPop.
        let g:acp_enableAtStartup        = 0

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

    Bundle 'FuzzyFinder'
    "      'FuzzyFinder'                {{{

        let g:fuf_modesDisable = []
        let g:fuf_mrufile_maxItem = 400
        let g:fuf_mrucmd_maxItem = 400

"       let g:fuf_coveragefile_globPatterns = [ './**/', '**/.*' ]
"       let g:fuf_abbrevMap = {
"           \   "^mod:" : [
"           \     "modules/**/",
"           \     "modules/**/manifests/*",
"           \     "modules/**/manifests/**/",
"           \   ],
"           \ }

        " 0: partial matching
        " 1: refining matching
"       let g:fuf_fuzzyRefining = 0

        noremap  <leader>fb   :FufBuffer  <CR>
        noremap  <leader>ff   :FufFile **/<CR>
        noremap  <leader>fd   :FufDir     <CR>
        noremap  <leader>fl   :FufLine    <CR>

        noremap  <leader>fmc  :FufMruCmd  <CR>
        noremap  <leader>fmf  :FufMruFile <CR>

        noremap  <leader>fh   :FufHelp    <CR>
        noremap  <leader>fj   :FufJumpList<CR>

        noremap  <leader>fbd  :FufBookmarkDir     <CR>
        noremap  <leader>fbf  :FufBookmarkFile    <CR>
        noremap  <leader>fbda :FufBookmarkDirAdd  <CR>
        noremap  <leader>fbfa :FufBookmarkFileAdd <CR>
        "
        " noremap  <leader>fcf  :FufCoverageFile  <CR>
        " noremap  <leader>fcl  :FufChangeList    <CR>
        " noremap  <leader>fq   :FufQuickfix      <CR>
        "
        " noremap  <leader>fbt  :FufBufferTag     <CR>
        " noremap  <leader>ft   :FufTag           <CR>
        " noremap  <leader>ftf  :FufTaggedFile    <CR>

        " nnoremap <silent> sj     :FufBuffer<CR>
        " nnoremap <silent> sk     :FufFileWithCurrentBufferDir<CR>
        " nnoremap <silent> sK     :FufFileWithFullCwd<CR>
        " nnoremap <silent> s<C-k> :FufFile<CR>
        " nnoremap <silent> sl     :FufCoverageFileChange<CR>
        " nnoremap <silent> sL     :FufCoverageFileChange<CR>
        " nnoremap <silent> s<C-l> :FufCoverageFileRegister<CR>
        " nnoremap <silent> sd     :FufDirWithCurrentBufferDir<CR>
        " nnoremap <silent> sD     :FufDirWithFullCwd<CR>
        " nnoremap <silent> s<C-d> :FufDir<CR>
        " nnoremap <silent> sn     :FufMruFile<CR>
        " nnoremap <silent> sN     :FufMruFileInCwd<CR>
        " nnoremap <silent> sm     :FufMruCmd<CR>
        " nnoremap <silent> su     :FufBookmarkFile<CR>
        " nnoremap <silent> s<C-u> :FufBookmarkFileAdd<CR>
        " vnoremap <silent> s<C-u> :FufBookmarkFileAddAsSelectedText<CR>
        " nnoremap <silent> si     :FufBookmarkDir<CR>
        " nnoremap <silent> s<C-i> :FufBookmarkDirAdd<CR>
        " nnoremap <silent> st     :FufTag<CR>
        " nnoremap <silent> sT     :FufTag!<CR>
        " nnoremap <silent> s<C-]> :FufTagWithCursorWord!<CR>
        " nnoremap <silent> s,     :FufBufferTag<CR>
        " nnoremap <silent> s<     :FufBufferTag!<CR>
        " vnoremap <silent> s,     :FufBufferTagWithSelectedText!<CR>
        " vnoremap <silent> s<     :FufBufferTagWithSelectedText<CR>
        " nnoremap <silent> sxxxw  :FufBufferTagWithCursorWord!<CR>
        " nnoremap <silent> s.     :FufBufferTagAll<CR>
        " nnoremap <silent> s>     :FufBufferTagAll!<CR>
        " vnoremap <silent> s.     :FufBufferTagAllWithSelectedText!<CR>
        " vnoremap <silent> s>     :FufBufferTagAllWithSelectedText<CR>
        " nnoremap <silent> s]     :FufBufferTagAllWithCursorWord!<CR>
        " nnoremap <silent> sg     :FufTaggedFile<CR>
        " nnoremap <silent> sG     :FufTaggedFile!<CR>
        " nnoremap <silent> so     :FufJumpList<CR>
        " nnoremap <silent> sp     :FufChangeList<CR>
        " nnoremap <silent> sq     :FufQuickfix<CR>
        " nnoremap <silent> sy     :FufLine<CR>
        " nnoremap <silent> sh     :FufHelp<CR>
        " nnoremap <silent> se     :FufEditDataFile<CR>
        " nnoremap <silent> sr     :FufRenewCache<CR>
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

    " Bash-support                      {{{

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
    " Perl-support                      {{{
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
    Bundle 'tpope/vim-repeat'
    Bundle 'tpope/vim-surround'
    Bundle 'tpope/vim-unimpaired'
    Bundle 'tpope/vim-speeddating'
    "      'tpope/vim-speeddating'    " {{{
        let g:speeddating_no_mappings = 0
    " }}}

"   Bundle 'vim-ruby/vim-ruby'
"   Bundle 'tpope/vim-rails'
"   Bundle 'tpope/vim-rake'
"   Bundle 'tpope/vim-bundler'

"   Bundle 'tpope/vim-scriptease'
"   Bundle 'tpope/vim-sensible'


    """
    """ Shougo
    """

    " vimshell
    Bundle 'Shougo/vimproc'
    Bundle 'Shougo/vimshell'

    " vimfiler
    Bundle 'Shougo/unite.vim'
    Bundle 'Shougo/vimfiler'


    """
    """ Martin Greffel
    """
"   Bundle 'scrooloose/nerdcommenter'
    "      'scrooloose/nerdcommenter' " {{{

        let NERDCreateDefaultMappings = 1
        let NERDDefaultNesting = 0
        let NERDMenuMode = 0
        let NERDSpaceDelims = 1
        let NERDRemoveExtraSpaces = 1
    " }}}

""  Bundle 'scrooloose/nerdtree'
    "      'scrooloose/nerdtree'      " {{{

        let loaded_nerd_tree=1
""      let NERDTreeCaseSensitiveSort = 1
""      let NERDTreeChDirMode         = 0
""      let NERDTreeIgnore            = ['\.[ao]$','\.sw?$','\.DS_Store','\.svn','\.CVS','\.git']
""      let NERDTreeMouseMode         = 3
""      let NERDTreeShowLineNumbers   = 1
""      let NERDTreeShowHidden        = 1
""      let NERDTreeWinSize           = 30
""      let NERDTreeHijackNetrw       = 1

""      map <leader>nn :NERDTreeToggle <CR> " Dir tree
""      map <leader>nm :NERDTreeMirror <CR> " Dir tree
""      map <leader>no :NERDTree . <CR>   " Tree Open
""      map <leader>nc :NERDTreeClose<CR> " Tree Close
    " }}}

"   Bundle 'scrooloose/snipmate-snippets'
    "      'scrooloose/snipmate-snippets' {{{
        " Turn it off:
        " let loaded_snips = 1

        let g:snips_author = 'Marcus Vinicius Fereira            ferreira.mv[ at ].gmail.com'
"       let g:snippets_dir = '~/.vim/bundle/snipmate/snippets'
        let g:snippets_dir = '~/.vim/snippets'

"       nnoremap <leader>ras  :exec ReloadAllSnippets()<CR>

        " Tip: i_CTRL-R_<Tab>
        "      popupmenu of all snippets available
        "      for this filetype

        " Space+tab: snip list
"       inoremap <silent> <space><tab> <c-r>=ShowAvailableSnips()<cr>

        " acp+snip-mate (from help:acp.txt): plugin/snipmate.vim
        " fun! GetSnipsInCurrentScope()
        "     let snips = {}
        "     for scope in [bufnr('%')] + split(&ft, '\.') + ['_']
        "         call extend(snips, get(s:snippets, scope, {}), 'keep')
        "         call extend(snips, get(s:multi_snips, scope, {}), 'keep')
        "     endfor
        "     return snips
        " endf
"       let g:acp_behaviorSnipmateLength = 5

    " }}}


    """
    """ best of the best
    """
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

    Bundle 'Lokaltog/vim-easymotion'
    Bundle 'Lokaltog/vim-powerline'
    "      'Lokaltog/vim-powerline'     {{{

    " i_CTRL-V_Unnnn:
    " ∓ [0x2213]
    " ➤ [0x27a4]
    " ¶ [0x00b6]
"       let g:Powerline_symbols_override = {
"       \ 'BRANCH': [0x2213],
"       \ 'LINE': [0x27a4],
"       \ }
"       let g:Powerline_theme = 'mvf'
"       let g:Powerline_colorscheme = 'mvf'

"       let g:Powerline_symbols = 'fancy'
        let g:Powerline_symbols = 'unicode'

        let g:Powerline_theme = 'solarized16'
        let g:Powerline_stl_path_style = 'filename'
    " }}}

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

    Bundle 'wincent/Command-T'
    "      'wincent/Command-T'        " {
        let g:CommandTMaxFiles=20000
        let g:CommandTMinHeight=5

        let g:CommandTAcceptSelectionSplitMap='<D-j>'
        let g:CommandTAcceptSelectionVSplitMap='<D-k>'
        let g:CommandTAcceptSelectionTabMap='<D-CR>'

"       nnoremap <silent> <Leader>t :CommandT<CR>
"       nnoremap <silent> <Leader>b :CommandTBuffer<CR>
    " }


    Bundle 'mileszs/ack.vim'
    Bundle 'rking/ag.vim'
    "      'rking/ag.vim' {{{

      " let g:agprg="<custom-ag-path-goes-here> --column"

    " }}}

    Bundle 'airblade/vim-gitgutter'


    """
    """ Snipmate
    """
"   Bundle 'MarcWeber/vim-addon-mw-utils'
"   Bundle 'tomtom/tComment_vim'
"   Bundle 'tomtom/tlib_vim'
    "      'tomtom/tlib_vim'          " {{{
        " Turn it off:
        " let loaded_tlib = 1

        " My corrections
        " autocmd FileType  tlibInputList setlocal nonu cc=+1,+2,+3,+4,+5 cursorcolumn
        " highlight  InputlListCursor guifg=#CCCCCC  guibg=darkblue  gui=italic  ctermfg=white  ctermbg=darkblue  cterm=NONE

    " }}}
"   Bundle 'garbas/vim-snipmate'

"   Bundle 'snipmate-snippets'

    """
    """ Others....
    """
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

    Bundle 'vim-scripts/taglist.vim'
    "      'vim-scripts/taglist.vim' {{{
        " let loaded_taglist = 1 " 0: activate / 1: do not load
          let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
          let Tlist_File_Fold_Auto_Close = 1
          let Tlist_Show_Menu = 1

        " map <leader>t   :TlistToggle     <CR>
        " map <leader>ts  :TlistSessionSave ~/.tlistsession.vim.tag <CR>
        " map <leader>tl  :TlistSessionLoad ~/.tlistsession.vim.tag <CR>
    " }}}

"   Bundle 'vim-scripts/StatusLineHighlight'
    "      'vim-scripts/StatusLineHighlight' " {{{

        " Turn it off:
        " let g:loaded_StatusLineHighlight = 1

        " My buffers
        highlight StatusLineModified       guifg=#CCCCCC    guibg=DarkRed   gui=bold ctermfg=gray    ctermbg=DarkRed   cterm=NONE
        highlight StatusLineModifiedNC     guifg=DarkRed    guibg=gray      gui=bold ctermfg=DarkRed ctermbg=gray      cterm=NONE

        " Help
        highlight StatusLineSpecial        guifg=lightgreen guibg=darkgreen gui=bold ctermfg=yellow  ctermbg=darkgreen cterm=NONE
        highlight StatusLineSpecialNC      guifg=lightgreen guibg=darkgreen gui=bold ctermfg=yellow  ctermbg=darkgreen cterm=NONE

        " :pedit/psearch/ptag
        highlight StatusLinePreview        guifg=white      guibg=magenta   gui=bold ctermfg=white   ctermbg=magenta   cterm=NONE
        highlight StatusLinePreviewNC      guifg=black      guibg=magenta   gui=bold ctermfg=black   ctermbg=magenta   cterm=NONE

        " others...
        highlight StatusLineReadonly       guifg=white      guibg=darkgreen gui=bold ctermfg=white   ctermbg=darkgreen cterm=NONE
        highlight StatusLineReadonlyNC     guifg=white      guibg=darkgreen gui=bold ctermfg=white   ctermbg=darkgreen cterm=NONE
        highlight StatusLineUnmodifiable   guifg=green      guibg=darkgreen gui=bold ctermfg=green   ctermbg=darkgreen cterm=NONE
        highlight StatusLineUnmodifiableNC guifg=green      guibg=darkgreen gui=bold ctermfg=green   ctermbg=darkgreen cterm=NONE

    " }}}

"   Bundle 'Raimondi/delimitMate'

"   Bundle 'sessionman.vim'
"   Bundle 'sjl/gundo.vim'
"   Bundle 'pangloss/vim-javascript'


    " ft:markdown
    Bundle 'tpope/vim-markdown'

    " ft:mkd
    "undle 'plasticboy/vim-markdown'
    Bundle 'nelstrom/vim-markdown-preview'
    "      'nelstrom/vim-markdown-preview'     {{{
    nnoremap <silent> <Leader>mm :Mm<CR>
    "
    "
    "      }}}


    """
    """ Must see...
    """
"   Bundle 'majutsushi/tagbar'
    " tregisters.vim            {{{
        " Turn it off:
        " let loaded_tregisters = 1

       " map <leader>tr :TRegisters    <CR>

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
    " mark.vim                  {{{
        " Turn it off:
        " let g:loaded_mark = 1
    " }}}
    " marks browser.vim         {{{
        " Turn it off:
        " let loaded_marksbrowser = 1

        " map <leader>mb :MarksBrowser<CR><CR>

        " Do not close after selecting a mark
        " let marksCloseWhenSelected = 0

    " }}}
    " marks_corey.vim           {{{
        " Turn it off:
        " let g:loaded_marks_corey = 1
    " }}}
    " searchcomplete            {{{
        " Turn it off:
        " let loaded_search_complete = 1
    " }}}
    " showmarks                 {{{
        " Turn it off:
        " let loaded_showmarks = 1

        " hi ShowMarksHLl guifg=white guibg=black    gui=bold ctermfg=white ctermbg=black    cterm=bold
        " hi ShowMarksHLu guifg=white guibg=darkblue gui=bold ctermfg=white ctermbg=darkblue cterm=bold
        " hi ShowMarksHLo guifg=gray  guibg=black    gui=bold ctermfg=gray  ctermbg=black    cterm=bold
        " hi ShowMarksHLm guifg=white guibg=gray     gui=bold ctermfg=white ctermbg=gray     cterm=bold

       " map <leader>mt :ShowMarksToggle    <CR>
       " map <leader>mm :ShowMarksPlaceMark <CR>
       " map <leader>md :ShowMarksClearMark <CR>
       " map <leader>ma :ShowMarksClearAll  <CR>

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
    " tmarks.vim                {{{
        " Turn it off:
        " let loaded_tmarks = 1

       " map <leader>tm :TMarks    <CR>

    " }}}
    " RainbowPlugin             {{{
        " Turn it off:
        " let g:loaded_Rainbow = 1
    " }}}


" vim: set foldlevel=9

