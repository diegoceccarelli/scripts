" basic settings
source ~/scripts/vim/settings-base.vim
" syntax highlighting
source ~/scripts/vim/settings-syntax.vim
" keyboard shortcuts
source ~/scripts/vim/settings-mappings.vim
" syntastic settings
source ~/scripts/vim/settings-syntastic.vim

" load bundles with pathogen
execute pathogen#infect()

" set ctags
set tags+=./.tags;/,./tags;/
