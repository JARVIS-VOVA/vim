set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" vim +PluginInstall +qall
" sudo vim +PluginClean +qall
" sudo :PluginInstall
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'jiangmiao/auto-pairs'
Plugin 'airblade/vim-gitgutter'
" Plugin 'wincent/Command-T'
" Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on "required

syntax on
colorscheme gruvbox
set background=dark
set number
set expandtab ts=2
set incsearch " Highlight matches as you type.
set hlsearch " Highlight matches.

map <C-n> :NERDTreeToggle<CR>

