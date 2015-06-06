#!/bin/bash
cd ~/.vim/bundle

# pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# ctrl P
git clone https://github.com/kien/ctrlp.vim.git

# git fugitive
git clone https://github.com/tpope/vim-fugitive.git

# unimpaired brachet matching
git clone https://github.com/tpope/vim-unimpaired.git

# repeating plugin commands with a .
git clone https://github.com/tpope/vim-repeat.git

# surround
git clone https://github.com/tpope/vim-surround.git

# syntastic syntax check
git clone https://github.com/scrooloose/syntastic.git

# supertab
git clone https://github.com/ervandew/supertab.git
