
" Vim settings when 'set compatible' is used
" ============================================

    set cpoptions=aABcefFmqs
    "             |||||||||+-- Set buffer options when entering the buffer
    "             ||||||||+-- When joining lines, leave the cursor between joined lines
    "             |||||||+-- When a new match is created (showmatch) pause for .5
    "             ||||||+-- :write command updates current file name
    "             |||||+-- :read command updates current file name
    "             ||||+-- Automatically add <CR> to the last line when using :@r
    "             |||+-- Searching continues at the end of the match at the cursor position
    "             ||+-- A backslash has no special meaning in mappings
    "             |+-- :write updates alternative file name
    "             +-- :read updates alternative file name
    set cpoptions+=#
    "              |
    "              +-- A count before "D", "o" and "O" has no effect.
    set cpoptions-=n
    "              +-- column for 'number' does not show wrapped text


