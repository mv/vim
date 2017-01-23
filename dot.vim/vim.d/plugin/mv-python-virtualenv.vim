
" vim:ft=vim:set foldlevel=9:

"""
""" python with virtualenv support
"""
""" Ref:
"""   https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/
"""

py << EOF

import os
import sys

if 'VIRTUAL_ENV' in os.environ:

    proj_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join( proj_base_dir, 'bin/activate_this.py' )

    execfile( activate_this, dict( __file__ = activate_this ) )

EOF


