" Enable mouse support
set mouse=a

" Copy everything to OS clipboard if using OS X
let os = substitute(system('uname'), "\n", "", "")
" if os == "Darwin"
    " set clipboard=unnamed
" endif

" Leaders
let maplocalleader = ","
let mapleader = ","

" Make sure background works properly for tmux
set t_ut=

" Highlight during word search
set nohls

" Enable syntax highlighting
syntax enable

" Theme settings
set background=dark

" Line numbers
set number
set relativenumber

" Add vertical bar at 80 characters
set colorcolumn=80

" Make tabs appear as 4 spaces
set tabstop=4

" Don't wrap lines by default
set nowrap

set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" Scrolling behavior with mouse, scroll one line at a time
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Configure the cursor shape and color.
set guicursor=i:ver25

set scroll=20

" Change directory to where current buffer is.
" autocmd BufEnter * silent! lcd %:p:h
