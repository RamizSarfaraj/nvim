nnoremap <Space> <Nop>
let mapleader=' '   " mapping space as leader key

imap kj <Esc>   " use kj to go the normal mode instead of escape key 
vmap kj <Esc>   " use kj to go the normal mode instead of escape key 


nnoremap fv :vsp<cr>    " use fv to split window vertically 
nnoremap fh :sp<cr>     " use fh to split window horoizontal

" use ; to activate cmd mode
nmap ; :

" split window navigation 
nnoremap <C-J> <C-w><C-j>
nnoremap <C-K> <C-w><C-k>
nnoremap <C-L> <C-w><C-l>
nnoremap <C-H> <C-w><C-h>


" resize windows
nmap <M-left> :vertical resize -2<CR>
nmap <M-right> :vertical resize +2<CR>
nmap <M-up> :resize +2<CR>
nmap <M-down> :resize -2<CR>


nnoremap ;w :w<CR>
nnoremap ;q :wq<CR>
nnoremap q1 :q!<CR> 

" Better tabing 
nmap > >><CR>
nmap < <<<CR>
vmap > >><CR>
vmap < <<<CR>


" <TAB>: completion.
inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
