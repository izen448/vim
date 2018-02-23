#!/bin/bash

cp ./.vimrc ~/
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/scrooloose/nerdcommenter.git ~/.vim/bundle/nerdcommenter
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/ernstvanderlinden/vim-coldfusion.git ~/.vim/bundle/vim-coldfusion
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
git clone https://github.com/ccraciun/vim-dreammaker.git ~/.vim/bundle/vim-dreammaker
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
git clone git://github.com/nathanaelkane/vim-indent-guides.git ~/.vim/bundle/vim-indent-guides
git clone https://github.com/tomlion/vim-solidity.git ~/.vim/bundle/vim-solidity
cd
