set runtimepath+=~/.vim_runtime

let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let mapleader = "\<Space>"

" KEYS **************************************

nnoremap <leader>q ZQ<CR>
nnoremap <leader><tab> :NERDTreeToggle<CR>
nnoremap <leader>w :w<CR>

" tab shortcuts
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

" Buffer shorcuts
nnoremap <leader>b :ls<CR>
nnoremap <leader>n :bn<CR>
nnoremap <leader>p :bp<CR>
nnoremap <leader>d :bd<CR>

" Window shortcuts
nnoremap <leader>h <C-w><left><CR>
nnoremap <leader>j <C-w><down><CR>
nnoremap <leader>k <C-w><up><CR>
nnoremap <leader>l <C-w><right><CR>

" window split shortcuts
nnoremap <leader>s :sp<CR>
nnoremap <leader>S :vs<CR> 

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim 
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry


set nocompatible              " be iMproved, required
filetype off                  " required

set number
set relativenumber

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" NerdTree
Plugin 'scrooloose/nerdtree'

" vim js
Plugin 'pangloss/vim-javascript' 

" awk
Plugin 'mileszs/ack.vim'

" BufExplorer
Plugin 'vim-scripts/bufexplorer.zip'

" surround.vim
Plugin 'tpope/vim-surround'

" airline
Plugin 'bling/vim-airline'
" airline themes
Plugin 'vim-airline/vim-airline-themes'

" Syntastic
Plugin 'scrooloose/syntastic'

" youcompleteme
Plugin 'valloric/youcompleteme'

" vim jsx
Plugin 'mxw/vim-jsx'

" supertab 
Plugin 'ervandew/supertab'

Plugin 'altercation/vim-colors-solarized'

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
