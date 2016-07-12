let g:netrw_dirhistmax = 0 " disable .netrwhist file creation
let g:netrw_liststyle = 0 " thin (change to 3 for tree)
let g:netrw_banner = 0 " no banner
let g:netrw_hide = 1 " enable file ignore patterns

" file ignore patterns
let g:netrw_list_hide = join([
  \ '^\./$',
  \ '^\.\./$',
  \ '^\.git/$',
  \ netrw_gitignore#Hide()
\ ], ',')
