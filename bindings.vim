" use Q to execute default register (shadows ex mode)
nnoremap Q @q 

" tab indentation
vnoremap <tab> >gv
vnoremap <s-tab> <lt>gv
nnoremap <tab> >>
nnoremap <s-tab> <lt><lt>

" clear search with [ESC]
nnoremap <silent> <esc> :nohlsearch<cr>

" open netrc with [-]
nnoremap <silent> - :Explore<cr>

" enter NORMAL mode in term
tnoremap <esc> <c-\><c-n>

" exit term and close its window 
tnoremap <silent> <c-d> <c-\><c-n>:Tclose<cr>

" tab completion
inoremap <expr><tab> pumvisible() ? '\<c-n>' : '\<tab>'
inoremap <expr><s-tab> pumvisible() ? '\<c-p>' : '\<s-tab>'

" --------------
" [alt] mappings
" --------------

" move between windows
nnoremap <a-h> <c-w>h
nnoremap <a-j> <c-w>j
nnoremap <a-k> <c-w>k
nnoremap <a-l> <c-w>l

inoremap <a-h> <c-w>h
inoremap <a-j> <c-w>j
inoremap <a-k> <c-w>k
inoremap <a-l> <c-w>l

tnoremap <a-h> <c-\><c-n><c-w>h
tnoremap <a-j> <c-\><c-n><c-w>j
tnoremap <a-k> <c-\><c-n><c-w>k
tnoremap <a-l> <c-\><c-n><c-w>l

" close windows
nnoremap <silent> <a-x> :call nvide#closeWindow()<cr>
inoremap <silent> <a-x> <esc>:call nvide#closeWindow()<cr>

" -----------------
" <leader> mappings
" -----------------

" move between tabs
nnoremap <silent> <leader><tab> :tabnext<cr>
nnoremap <silent> <leader><s-tab> :tabprevious<cr>

nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 10gt

" reload configuration
nnoremap <silent> <leader>r :source $MYVIMRC<cr>

" update plugins
nnoremap <silent> <leader>u :call nvide#update()<cr>

" netrw
nnoremap <silent> <leader>h :Vex<cr>
nnoremap <silent> <leader>l :Vex!<cr>
nnoremap <silent> <leader>- :Tex<cr>

" neoterm
nnoremap <silent> <leader>t :Topen \| call g:neoterm.last().focus() \| startinsert<cr>

" unite
nnoremap <silent> <leader>f :Unite file_rec/neovim<cr>

" fugitive
nnoremap <leader>gg :Gwrite<cr>
nnoremap <leader>gu :Gread<cr>
nnoremap <leader>gr :Gremove<cr>
nnoremap <leader>gm :Gmove<space>

nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gc :Gcommit<cr>

" gitgutter
nnoremap <leader>gdn <plug>GitGutterNextHunk
nnoremap <leader>gdp <plug>GitGutterPrevHunk
nnoremap <leader>gdv <plug>GitGutterPreviewHunk
nnoremap <leader>gds <plug>GitGutterStageHunk
nnoremap <leader>gdu <plug>GitGutterUndoHunk
