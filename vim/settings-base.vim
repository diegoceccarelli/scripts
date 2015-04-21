" compatibility
set nocompatible          " Use Vim defaults instead of vi
set backspace=2           " allow backspacing over everything in insert mode
set history=5000          " 5000 lines of command line history
set viminfo='20,\"50      " 50 lines of registers max

" indentation
set autoindent            " automatic indentation
set ts=4 sw=4 sts=4 et    " tabs at 4 spaces

" buffers
set hidden                " hide buffers instead of closing

" search
set ignorecase            " Do case insensitive matching
set incsearch             " Incremental search
set hlsearch              " Highlight matching results

" visuals
set ruler                 " the ruler on the bottom is useful
set number                " Show line numbers
set showcmd               " Show (partial) command in status line.
set laststatus=2          " always have status bar
set scrolloff=1           " dont let the curser get too close to the edge
set linebreak             " This displays long lines as wrapped at word boundries
set showmatch             " Show matching brackets.
set matchtime=10          " Time to flash the brack with showmatch
colorscheme darkblue      " a colorscheme to use

" bash tabs for wildmode
set wildmenu
set wildmode=list:longest,full

" file types
filetype plugin on
filetype indent on

" files that we are unlikely to edit
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.class

"When editing a file, make screen display the name of the file you are editing
function! SetTitle()
  if $TERM =~ "^screen"
    let l:title = 'vi: ' . expand('%:t')        
    
    if (l:title != 'vi: __Tag_List__')
      let l:truncTitle = strpart(l:title, 0, 15)
      silent exe '!echo -e -n "\033k' . l:truncTitle . '\033\\"'     
    endif
  endif
endfunction

" Run it every time we change buffers
autocmd BufEnter,BufFilePost * call SetTitle()

