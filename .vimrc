" Enable file type detection and plugin/indent info
filetype plugin indent on

" Set UTF-8 encoding
set encoding=utf-8

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Enable relative line numbers
set relativenumber

" Highlight current line
set cursorline

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Show matching brackets when text indicator is over them
set showmatch

" Enable mouse support
set mouse=a

" Enable auto indentation
set autoindent
set smartindent

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Enable wildmenu for command-line completion
set wildmenu

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show incomplete commands
set showcmd

" Enable incremental searching
set incsearch

" Highlight matching search patterns
set hlsearch

" Enable folding
set foldenable

" Open most folds by default
set foldlevelstart=10

" 10 nested fold max
set foldnestmax=10

" Fold based on indent level
set foldmethod=indent

" Enable auto-completion
set wildmode=longest,list,full
set wildmenu

" Disable backup files
set nobackup
set nowritebackup
set noswapfile

" Set to auto read when a file is changed from the outside
set autoread

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the Wild menu
set wildmenu

" Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Don't wrap lines
set nowrap

" Set 80 character line limit
set colorcolumn=80

" Enable persistent undo
set undofile
set undodir=~/.vim/undodir

" Visual mode:
" let mapleader = " "
xnoremap <leader> p \"_dP
