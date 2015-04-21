" map leader
let mapleader=","
noremap \ ,

" shortcuts for common commands
nnoremap <leader>p :CtrlP<CR><C-f>
nnoremap <leader>s :w<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>e :e 
nnoremap <leader>g :!git grep 
nnoremap <leader>r :%s/

" paste
set pastetoggle=<F2>

" Jump by rows<leader> not lines
nnoremap j gj
nnoremap k gk

" scroll command history easier
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" expand %% to %:h in comand mode
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h')./ : %%

" temporarily remove arrow keys, to learn using hjkl
noremap <Up> <Nop>
noremap <Right> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>

" remove highlighting
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
