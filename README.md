nvide
=====

[neovim](https://neovim.io)-based IDE for frontend development

Key bindings
------------

    let mapleader = " "

### fast save and stage file

  * `<a-s>`: same as `<leader>gw` but faster (see **fugitive** below)

### layout navigation

  * `<a-[hjkl]>`: navigate between windows
  * `<a-[0-9]>`: navigate between tabs (0 = 10)
  * `<a-tab>`: go to next tab

### netrw (file explorer)

  * `-`: open in the current window
  * `<leader>h`: open in a split on the left
  * `<leader>l`: open in a split on the right
  * `<leader>-`: open in a new tab

### vim-fugitive

  * `<leader>gw`: save buffer and stage current file
  * `<leader>gu`: revert current file to last checked in version
  * `<leader>gr`: remove current file
  * `<leader>gm`: rename current file
  * `<leader>gs`: open status window
  * `<leader>gc`: open commit window
  * `C`: (from status window) open commit window

### vim-gitgutter

  * `<leader>gdn`: go to next hunk
  * `<leader>gdp`: go to previous hunk
  * `<leader>gdv`: preview changes
  * `<leader>gds`: stage hunk
  * `<leader>gdu`: undo stage hunk

### unite

  * `<leader>f`: open file fuzzy finder
  * `<c-l>`: (from unite) refresh cache

References
----------

  * <http://vim.wikia.com/wiki/Use_Vim_like_an_IDE>
  * <https://github.com/vimlab/neojs>
  * <https://davidosomething.com/blog/vim-for-javascript/>
