set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za
Plugin 'tmhedberg/SimpylFold'

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
Plugin 'vim-scripts/indentpython.vim'
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
set encoding=utf-8
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
let python_highlight_all=1
syntax on
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
Plugin 'kien/ctrlp.vim'
set nu
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
