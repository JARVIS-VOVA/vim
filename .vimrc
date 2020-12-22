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
Plugin 'scrooloose/nerdtree'      " Ctrl-w w, Ctrl-w h/j/k/l
Plugin 'kien/ctrlp.vim'
Plugin 'corntrace/bufexplorer'
Plugin 'AutoComplPop'
Plugin 'morhetz/gruvbox'          " Color code
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-scripts/grep.vim'     " Search text by project
Plugin 'tpope/vim-fugitive'
Plugin 'jiangmiao/auto-pairs'
" Plugin 'wincent/Command-T'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'vim-scripts/EasyGrep'

" After change file need run command :source %

" All of your Plugins must be added before the following line

call vundle#end()         " required
filetype plugin indent on " required

syntax on
colorscheme gruvbox

set clipboard=unnamedplus " Використовувати "+ буфур обмена

set background=dark
set cursorline            " Подсвечивать линию текста, на которой находится курсор
set showtabline=2         " Always shows tabs on topset autoread
set smartindent           " Умний перенос строки

set number
set relativenumber        " Set relative line numbers

set colorcolumn=120       " Setup a line length marker
highlight ColorColumn ctermbg=black guibg=#2c2d27
" darkgrey, black
" :highlight ColorColumn guibg=#2c2d27

set expandtab ts=2        " Change tab on spaces
set shiftwidth=2          " >> default space

set lines=55              " Указание висоти окна редактора по умолчанию
set columns=235           " Указание ширини окна редактора по умолчанию

set list                  " показувати всі символи
set listchars=trail:~     " Show symbol spaces
set listchars=eol:⌘       " ↵ ⏎

set incsearch             " Поиск в процессе набора
set hlsearch              " Подсвечивание результатов поиска
set ignorecase

set guioptions-=m         " remove menu bar
set guioptions-=T         " remove toolbar
set guioptions-=r         " remove right-hand scroll bar
set guioptions-=L         " remove left-hand scroll bar

set autoread              " Auto-reloading a file in VIM as soon as it changes on disk

" Status Line
set laststatus=2          " show statusline everytime
set statusline=
set statusline+=%#PmenuSel#
set statusline+=\ \ %{FugitiveStatusline()}\ \  " statusline setup
" set statusline+=%#StatusLineTermNC#           " background green
set statusline+=\ \ %f%m                        " tail of the filename
set statusline+=%=                              " left/right separator
" set statusline+=%#CursorColumn#               " background black
set statusline+=\ \ %c\ \                       " cursor column
" set statusline+=%#DiffChange#                 " background green
set statusline+=\ \ %l/%L\ \                    " cursor line/total lines
" set statusline+=%#GitGutterDeleteLine#        " background red
set statusline+=\ \ %P\ \                       " percent through file

" CtrlP
let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn|tmp|coverage|log|tmp|node_modules)$'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10,results:10'

" [CTRL-M] BufExplorer
nnoremap <silent> <C-m> :BufExplorer<CR>

" NerdTree
map <C-n> :NERDTreeToggle<CR>
map <F3> :NERDTreeFind<CR>
let NERDTreeShowHidden=1
" open a NERDTree automatically when vim starts up
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

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

autocmd BufWritePre * :%s/\s\+$//e        " стирати зайві пробіли після збереження файла
