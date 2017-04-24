" basic settings
source ~/scripts/vim/settings-base.vim
" syntax highlighting
source ~/scripts/vim/settings-syntax.vim
" keyboard shortcuts
source ~/scripts/vim/settings-mappings.vim
" syntastic settings
source ~/scripts/vim/settings-syntastic.vim

" load bundles with pathogen
" execute pathogen#infect()

filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'raimondi/delimitmate'
Plugin 'kana/vim-textobj-user'
Plugin 'sgur/vim-textobj-parameter'
Plugin 'Julian/vim-textobj-variable-segment'
Plugin 'libclang-vim/vim-textobj-clang'
Plugin 'morhetz/gruvbox'
Plugin 'flazz/vim-colorschemes'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set t_Co=256
colorscheme gruvbox
set colorcolumn=81
" execute "set colorcolumn=" . join(range(80,999), ',')
hi ColorColumn ctermbg=7
hi NonText ctermbg=0 guibg=#505050

" set ctags
set tags+=./.tags;/,./tags;/
