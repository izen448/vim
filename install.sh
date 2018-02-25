#!/bin/bash

# Copy the .vimrc to home
cp ./.vimrc ~/

# Install Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Plugins
# ------------
# NERDCommenter
git clone https://github.com/scrooloose/nerdcommenter.git ~/.vim/bundle/nerdcommenter
# NERDTree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
# VIM-Fugitive
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
# Indent Guides
git clone git://github.com/nathanaelkane/vim-indent-guides.git ~/.vim/bundle/vim-indent-guides
# Syntastic
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/syntastic

# Coloring
# ------------
# Solarized Color Scheme
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized

# Syntax
# ------------
# Coldfusion
git clone https://github.com/ernstvanderlinden/vim-coldfusion.git ~/.vim/bundle/vim-coldfusion
# DreamMaker
git clone https://github.com/ccraciun/vim-dreammaker.git ~/.vim/bundle/vim-dreammaker
# Solidity
git clone https://github.com/tomlion/vim-solidity.git ~/.vim/bundle/vim-solidity
# Markdown
git clone https://github.com/plasticboy/vim-markdown.git ~/.vim/bundle/vim-markdown

# Back home
cd
