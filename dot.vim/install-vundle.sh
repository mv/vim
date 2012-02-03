#
# Ref:
#     https://github.com/tpope/vim-pathogen#readme
#     https://github.com/gmarik/vundle
#

## Pathogen setup
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim

## Vundle setup
if [ -d ~/.vim/bundle/vundle ]
then
	cd ~/.vim/bundle/vundle && git pull
else
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi
