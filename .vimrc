echo ".vimrc loaded, lets get to work!ohyeaah:w"

set nocompatible    " be iMproved, required
filetype off        " required
syntax enable       " enable syntax processing



"Visual stuff
set t_Co=256
set background=dark
colorscheme solarized

"mostly python and bash"

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

"Other setting, TODO: organize
set virtualedit=all     " can move the cursor into illegal places
set number		        " show line numbers
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set showmatch           " highlight matching [{()}]
set lazyredraw          " redraw only when we need to.
set showmode
"The 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in  multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer crashes.
set hidden 

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" " dialogue asking if you wish to save changed files.
set confirm

"MOVEMENT SETTINGS
"
" REAMPS
" move vertically by visual line
nnoremap j gj
nnoremap k gk
"nnoremap lr 

nnoremap <F2> :echo 'Current time is ' . strftime('%c')<CR>
nnoremap <F3> :so ~/.vimrc<CR>
 " turn off search highlight

nnoremap <space> :nohlsearch<CR>
 "turn off search highlight
"nnoremap rlv :so<space>.vimrc" 

"most of the stuff is from this great site:"
"http://dougblack.io/words/a-good-vimrc.html"




" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9' " Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

