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

" tab completion (double quotes are mandatory)
inoremap <expr> <tab> pumvisible() ? "\<c-n>" : "\<tab>"

" --------------
" [alt] mappings
" --------------

" a faster way to save and stage files
nnoremap <a-s> :Gwrite<cr>
inoremap <a-s> <esc>:Gwrite<cr>i

" move between windows
nnoremap <a-h> <c-w>h
nnoremap <a-j> <c-w>j
nnoremap <a-k> <c-w>k
nnoremap <a-l> <c-w>l

inoremap <a-h> <esc><c-w>h
inoremap <a-j> <esc><c-w>j
inoremap <a-k> <esc><c-w>k
inoremap <a-l> <esc><c-w>l

tnoremap <a-h> <c-\><c-n><c-w>h
tnoremap <a-j> <c-\><c-n><c-w>j
tnoremap <a-k> <c-\><c-n><c-w>k
tnoremap <a-l> <c-\><c-n><c-w>l

" close windows
nnoremap <silent> <a-x> :call nvide#closeWindow()<cr>
inoremap <silent> <a-x> <esc>:call nvide#closeWindow()<cr>
tnoremap <silent> <a-x> <c-\><c-n>:call nvide#closeWindow()<cr>

" move between tabs
nnoremap <silent> <a-tab> :tabnext<cr>
inoremap <silent> <a-tab> <esc>:tabnext<cr>
tnoremap <silent> <a-tab> <c-\><c-n>:tabnext<cr>

nnoremap <a-1> 1gt
nnoremap <a-2> 2gt
nnoremap <a-3> 3gt
nnoremap <a-4> 4gt
nnoremap <a-5> 5gt
nnoremap <a-6> 6gt
nnoremap <a-7> 7gt
nnoremap <a-8> 8gt
nnoremap <a-9> 9gt
nnoremap <a-0> 10gt

inoremap <a-1> <esc>1gt
inoremap <a-2> <esc>2gt
inoremap <a-3> <esc>3gt
inoremap <a-4> <esc>4gt
inoremap <a-5> <esc>5gt
inoremap <a-6> <esc>6gt
inoremap <a-7> <esc>7gt
inoremap <a-8> <esc>8gt
inoremap <a-9> <esc>9gt
inoremap <a-0> <esc>10gt

tnoremap <a-1> <c-\><c-n>1gt
tnoremap <a-2> <c-\><c-n>2gt
tnoremap <a-3> <c-\><c-n>3gt
tnoremap <a-4> <c-\><c-n>4gt
tnoremap <a-5> <c-\><c-n>5gt
tnoremap <a-6> <c-\><c-n>6gt
tnoremap <a-7> <c-\><c-n>7gt
tnoremap <a-8> <c-\><c-n>8gt
tnoremap <a-9> <c-\><c-n>9gt
tnoremap <a-0> <c-\><c-n>10gt

" -----------------
" <leader> mappings
" -----------------

" reload configuration
nnoremap <silent> <leader>r :source $MYVIMRC<cr>

" update plugins
nnoremap <silent> <leader>u :call nvide#update()<cr>

" netrw
nnoremap <silent> <leader>h :Vex<cr>
nnoremap <silent> <leader>l :Vex!<cr>
nnoremap <silent> <leader>- :Tex<cr>

" neoterm
nnoremap <silent> <leader>j :Topen \| call g:neoterm.last().focus() \| startinsert<cr>
nnoremap <silent> <leader>k :call nvide#openTermTab()<cr>

" unite
nnoremap <silent> <leader>f :Unite -no-split file_rec/neovim<cr>

" fugitive
nnoremap <leader>gw :Gwrite<cr>
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
