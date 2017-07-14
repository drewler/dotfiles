set nocompatible " use vim settings, rather than vi settings

colorscheme badwolf

syntax enable

" Tab configuration
set tabstop=8
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

" UI config
set number
set showcmd
"set cursorline " highlight current line
set wildmenu    " autocomplete with tab in menu
set lazyredraw  " redraw only when neccesary. faster macros
set showmatch   " highlight matching characters, like parentheses
set scrolloff=5 " scroll limit

" Searching
set incsearch   " search characters as entered
set hlsearch    " highlight matches
" turn off highlight with ,<space>
nnoremap <leader><space> :nohlsearch<CR>

" Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
" <space> opens/closes folders
nnoremap <space> za

" Movement
nnoremap j gj
nnoremap k gk
" move lines up/down with Ctrl+[jk]
nmap <C-j> mz:m+<cr>`z
nmap <C-k> mz:m-2<cr>`z
vmap <C-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <C-k> :m'<-2<cr>`>my`<mzgv`yo`z
" highligh last inserted text
nnoremap gV `[v`]

let mapleader=","
" save session
nnoremap <leader>s :mksession<CR>

" Clipboard
vmap <leader>c "+y<CR>
nmap <leader>c "+y<CR>
vmap <leader>p "+p<CR>
nmap <leader>p "+p<CR>

" Selection
" select everything
nmap <leader><C-e> ggVG

set mouse=a

if has("autocmd")
    filetype plugin indent on
    autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif
else
    set autoindent
endif
