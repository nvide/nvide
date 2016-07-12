set number                " show line numbers
set ruler                 " show current position
set cursorline            " highlight current line
set nowrap                " do not wrap long lines
set clipboard=unnamedplus " use X clipboard
set hidden                " unsaved buffers can be hidden
set title                 " change the terminal's titleo
set showcmd               " show typed keys
set updatetime=500        " buffer update in miliseconds

" indentation
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent

" search
set ignorecase
set smartcase
set incsearch

" more natural split opening
set splitbelow
set splitright

" disable data lost protection
set nobackup
set noswapfile

" peristent undos
set undodir=~/.config/nvim/undodir
set undofile

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
