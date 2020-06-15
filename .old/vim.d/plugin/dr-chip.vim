
" vim:ft=vim:set foldlevel=9:


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

        if ! len(glob( $HOME.'/.vim/Plugin/bash-support/' ))
            let g:BASH_Support_Root_Dir        = $HOME.'/.vim/Plugin/'
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

        if ! len(glob( $HOME.'/.vim/Plugin/perl-support/' ))
            let g:Perl_Support_Root_Dir        = $HOME.'/.vim/Plugin/perl-support'
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


