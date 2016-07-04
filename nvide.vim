" -------------------------
" nvide#checkDependencies()
" -------------------------

function! nvide#checkDependencies()

  " vim-plug
  if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  endif

endfunction

" --------------
" nvide#update()
" --------------

function! nvide#update()
  PlugUpdate
  PlugUpgrade
  UpdateRemotePlugins
endfunction

" -------------------
" nvide#closeWindow()
" -------------------

function! s:IsPreviewWindowOpened()
  for nr in range(1, winnr('$'))
    if getwinvar(nr, "&previewwindow") | return 1 | endif
  endfor

  return 0
endfunction

function! nvide#closeWindow()
  if s:IsPreviewWindowOpened() | pclose
  else | close
  endif
endfunction

" -------------------
" nvide#openTermTab()
" -------------------
"
function! nvide#openTermTab()
  let l:neoterm_window = g:neoterm_window
  let g:neoterm_window = 'tabnew'
  Tnew
  let g:neoterm_window = l:neoterm_window
endfunction
