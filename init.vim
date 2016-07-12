" ----------------
" helper functions
" ----------------

source ~/.config/nvim/nvide.vim

" ----------------
" external plugins
" ----------------

call nvide#checkDependencies()

call plug#begin('~/.config/nvim/plugged')
source ~/.config/nvim/plugins.vim
call plug#end()

silent! colorscheme jellybeans " load theme

" ------------
" key bindings
" ------------

let mapleader = " "
source ~/.config/nvim/keybindings.vim

" ------------
" autocommands
" ------------

source ~/.config/nvim/autocommands.vim

" -------------
" core settings
" -------------

source ~/.config/nvim/reset.vim

" ---------------
" plugin settings
" ---------------

runtime! postplug/*.vim
