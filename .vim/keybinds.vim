" ===================================================================
" Set leader key to space
" ===================================================================
let mapleader = " "

" ===================================================================
" File Explorer (NerdTree)
" ===================================================================
nnoremap <leader>e :NERDTreeToggle<CR>

" ===================================================================
" Buffer Navigation
" ===================================================================
nnoremap [b :bp<CR> " Previous buffer
nnoremap ]b :bn<CR> " Next buffer
nnoremap <leader>bd :bd<CR> " Delete buffer

" ===================================================================
" Window Navigation
" ===================================================================
nnoremap <C-h> <C-w>h " Move to left window
nnoremap <C-l> <C-w>l " Move to right window
nnoremap <C-j> <C-w>j " Move to below window
nnoremap <C-k> <C-w>k " Move to upper window

" ===================================================================
" Window Splitting & Management
" ===================================================================
nnoremap <leader>\| :vsp<CR>  " Vertical split
nnoremap <leader>- :sp<CR>    " Horizontal split
nnoremap <leader>wx <C-w>x    " Swap
nnoremap <leader>wr <C-w>r    " Rotate
nnoremap <leader>wH <C-w>H    " Move the window to the far left with full height.
nnoremap <leader>wL <C-w>L    " Move the window to the far right with full height
nnoremap <leader>wJ <C-w>J    " Move the window to the bottom with full width
nnoremap <leader>wK <C-w>K    " Move the window to the top with full width
nnoremap <leader>wd <C-w>c    " Close
nnoremap <leader>w- <C-w>-    " Decrease height
nnoremap <leader>w+ <C-w>+    " Increase height
nnoremap <leader>w< <C-w><    " Decrease widht
nnoremap <leader>w> <C-w>>    " Increase width

" ===================================================================
" Search & UI
" ===================================================================
nnoremap <leader>ur :noh<CR>

" ===================================================================
" Exit insert mode
" ===================================================================
inoremap ;; <Esc>

" ===================================================================
" Quickfix & Location List
" ===================================================================
nnoremap <leader>xq :copen<CR> " Open quickfix list
nnoremap [q :cp<CR> " Previous quickfix item
nnoremap ]q :cn<CR> " Next quickfix item
nnoremap <leader>xl :ll<CR> " Open location list 
nnoremap [l :lp<CR> " Previous location item
nnoremap ]l :lne<CR> " Next location item 

" ===================================================================
" Move the line location
" ===================================================================
nnoremap <M-k> :move .-2<CR>== " Move current line up
nnoremap <M-j> :move .+1<CR>== " Move current line down
vnoremap <M-k> :move '>-2<CR>gv=gv " Move visually selected line up
vnoremap <M-j> :move '>+1<CR>gv=gv " Move visually selected line down

" ===================================================================
" Terminal
" ===================================================================
nnoremap <leader>ft :belowright term ++rows=4<CR>
