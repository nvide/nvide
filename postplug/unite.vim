if executable('ag')
  let g:unite_source_rec_async_command = ['ag', '--follow', '--nocolor', '--nogroup', '--hidden', '-g', '']
endif

call unite#custom#profile('default', 'context', {                         
  \   'start_insert': 1,                                                  
  \   'split': 0                                                     
  \ })                                                                    

call unite#custom#source('file_rec/neovim', 'max_candidates', 100)
