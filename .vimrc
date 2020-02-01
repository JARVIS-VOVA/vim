set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" vim +PluginInstall +qall
" sudo vim +PluginClean +qall
" sudo :PluginInstall
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree' " Ctrl-w w, Ctrl-w h/j/k/l
Plugin 'morhetz/gruvbox'     " Color code
Plugin 'jiangmiao/auto-pairs'
Plugin 'airblade/vim-gitgutter'
" Plugin 'wincent/Command-T'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
" For grep maybe need run command :source %
Plugin 'vim-scripts/grep.vim'
" Plugin 'vim-scripts/EasyGrep'
Plugin 'corntrace/bufexplorer'
Plugin 'AutoComplPop'

" All of your Plugins must be added before the following line

call vundle#end()         " required
filetype plugin indent on " required

syntax on
colorscheme gruvbox

set background=dark
set number
set list                " показувати всі символи
set expandtab ts=2
set shiftwidth=2
set autoindent
set showtabline=2       " Always shows tabs on top
set listchars=trail:•   " Show spaces in end of line
set autoread
set relativenumber      " Set relative line numbers
set laststatus=2


" Поиск в процессе набора
set incsearch
" Подсвечивание результатов поиска
set hlsearch
set ignorecase

" Указание размеров окна редактора по умолчанию
set lines=55
set columns=235

" Подсвечивать линию текста, на которой находится курсор
set cursorline

" set smarttab
" set et                  " включим автозамену по умолчанию
" set wrap                " попросим Vim переносить длинные строки
" set ai                  " включим автоотступы для новых строк


" remove menu bar
set guioptions-=m
" set guioptions-=r  "remove right-hand scroll bar
" set guioptions-=L  "remove left-hand scroll bar

" CtrlP
" let g:ctrlp_max_files = 10000
let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn|tmp|coverage|log|tmp|node_modules)$'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10,results:10'

" [CTRL-M] BufExplorer
nnoremap <silent> <C-m> :BufExplorer<CR>

" NerdTree
map <C-n> :NERDTreeToggle<CR>
map <F3> :NERDTreeFind<CR>
let NERDTreeShowHidden=1

" Rgrep
map <C-f> :Rgrep<cr>
let Grep_Default_Filelist = '*.*'
let Grep_Skip_Files = '*.log *.sql *.png *.jpg *.jpeg *.gif'
let Grep_Skip_Dirs = '.git tmp system coverage log solr public _site node_modules'

" Tabs
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
nnoremap <C-q>     :q!<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
inoremap <C-q>     <Esc>:q!<CR>i

autocmd BufWritePre * :%s/\s\+$//e " стирати зайві пробіли після збереження файла
" autocmd BufWritePre *.* :%s/\s\+$//e " записувати все в спільний буфер
