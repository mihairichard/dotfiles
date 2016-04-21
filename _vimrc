set autoindent
set ruler
set relativenumber
set number

""""" Vundle Setup
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'christoomey/vim-tmux-navigator'
Plugin 'vim-airline/vim-airline'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'tpope/vim-fugitive'
"Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'rdnetto/YCM-Generator'

Plugin 'nanotech/jellybeans.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

let mapleader = "\<Space>"

nnoremap <Leader>w :w<CR>
nnoremap <Leader>b :make<CR>

syntax on

set t_Co=256
color jellybeans

" Vim Airline stuff
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
let g:airline#extensions#whitespace#enabled = 0

" tagbar
"nnoremap <silent> <Leader>b :TagbarToggle<CR>

" tmux
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

" vim buffers
set hidden
set wildchar=<Tab> wildmenu wildmode=full
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

" NERDTree
map <C-n> :NERDTreeToggle<CR>

nnoremap <leader>q :bp<cr>:bd #<cr>

" YCM stuff
"highlight Pmenu ctermfg=15 ctermbg=0
"let g:ycm_extra_conf_globlist = ['~/pepper/*', ]
"let g:ycm_show_diagnostics_ui = 0
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_autoclose_preview_window_after_insertion = 1

set history=700
set undolevels=700

set hlsearch
set incsearch
set ignorecase
set smartcase

set nobackup
set nowritebackup
set noswapfile

inoremap jk <Esc>
