if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let mapleader = "'"
let maplocalleader = "\\"

set nocompatible
filetype off

" -----------------
" vim plug
" -----------------
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/base16-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'fatih/vim-go'
Plug 'junegunn/fzf.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'thoughtbot/vim-rspec'
Plug 'w0rp/ale'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ElmCast/elm-vim'
call plug#end()

set rtp+=~/.fzf

" general
set number " line numbers
set noswapfile " don't create .swp files
set nobackup   " don't create <file>~ backup files

filetype plugin on
filetype indent on

set autoread     " re-read externally changed files

set t_Co=256     " enable 256 colors

" ruler and cursor
set ruler        " enable line/column display in the bottom right corner
set colorcolumn=94
set cursorline

set showmatch " show matching parenthesis
set mat=2

set noerrorbells " no sounds.

set expandtab
set autoindent
set wrap
set tabstop=2
set shiftwidth=2
set textwidth=95
set formatoptions=qrn1

" searching
set hlsearch
set incsearch

" copy between windows
set clipboard+=unnamed

"reformats page and go to last edit location
map <Leader>ff gg=Gg;

" split vim window
nnoremap <leader>ev :split $MYVIMRC<cr>
" source .vimrc file
nnoremap <leader>sv :source $MYVIMRC<cr>

" do not close window
nnoremap <C-W>o <Nop>

" clean trailing whitespace
nnoremap <leader>w mz:%s/\s\+$//<cr>:let @/=''<cr>`z

" Buffer previous and next shortcut
map <leader>bn :bn<cr>
map <leader>bp :bp<cr>

" disable arrow keys
inoremap <up> nop
vnoremap <up> nop
inoremap <down> nop
vnoremap <down> nop
inoremap <left> nop
vnoremap <left> nop
inoremap <right> nop
vnoremap <right> nop

" map 'jk' to <esc> key
inoremap jk <esc>
vnoremap jk <esc>

" select and change to uppercase
nnoremap <C-U> viwU
" select
nnoremap <Space> viw
" delete word and put in Insert mode
nnoremap dq dwi
" delete line and create new line above in Insert mode
nnoremap <leader>c ddO
" move to start of line
nnoremap <c-h> 0
" move to next line
nnoremap <c-l> $
" select word and put quotes around it
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
" Insert a hash rocket with <c-l>
inoremap <c-l> <space>=><space>

" center every search result in the middle of the screen
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" set quickfix window to appear after grep invocation
autocmd QuickFixCmdPost *grep* cwindow

" highlight unwanted whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" set up highlight group & retain through colorscheme changes
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

" Colors
" -----------------------
syntax enable
"let base16colorspace=256
"set background=dark
"let g:solarized_contrast = "high"
"let g:solarized_visibility = "high"
colorscheme zellner

let s:config_path = fnamemodify(resolve(expand('<sfile>:p')), ':h')
exec "source " . s:config_path . '/vim/vimrc-nerdtree'
exec "source " . s:config_path . '/vim/vimrc-fugitive'
exec "source " . s:config_path . '/vim/vimrc-gitgutter'
exec "source " . s:config_path . '/vim/vimrc-ale'
exec "source " . s:config_path . '/vim/vimrc-clojure'
exec "source " . s:config_path . '/vim/vimrc-fzf'
