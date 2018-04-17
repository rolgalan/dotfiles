" Setting some decent VIM settings for programming

set ai                          " set auto-indenting on for programming
set showmatch                   " automatically show matching brackets. works like it does in bbedit.
set vb                          " turn on the "visual bell" - which is much quieter than the "audio blink"
set ruler                       " show the cursor position all the time
set laststatus=2                " make the last line where the status is two lines deep so you can see status always
set backspace=indent,eol,start  " make that backspace key work the way it should
set background=dark             " Use colours that work well on a dark background (Console is usually black)
set showmode                    " show the current mode
set clipboard=unnamed           " set clipboard to unnamed to access the system clipboard under windows and Mac
syntax on                       " turn syntax highlighting on by default
set nu
set smartcase                   " ignore case if search pattern is all lowercase, case-sensitive otherwise
set hlsearch                    " highlight search terms
set incsearch                   " show search matches as you type
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set scrolloff=4                 " keep 4 lines off the edges of the screen when scrolling
set tabstop=4			        " tab are measured as 4 spaces
set expandtab			        " tab key insert spaces instead of tabs
set nostartofline               " Don't reset cursor to start of line when moving around.
"set shortmess=atI              " Don't show the intro message when starting Vim
set showcmd                     " Show the (partial) command as it's being typed
"filetype on                     " Enable file type detection

" Use relative line numbers
"if exists("&relativenumber")
"    set relativenumber
"    au BufReadPost * set relativenumber
"endif

" Create new command. Example: repl will search 'a' and replace it for 'b'
" :command repl %s/a/b/

" Show EOL type and last modified timestamp, right after the filename
set statusline=%<%F%h%m%r\ [%{&ff}]\ (%{strftime(\"%H:%M\ %d/%m/%Y\",getftime(expand(\"%:p\")))})%=%l,%c%V\ %P

" gitcommit line wrapping
" au FileType gitcommit set tw=72

"Use custom header template when creating new sh files
au bufnewfile *.sh 0r ~/.vim/sh_header.temp

"Use custom header template when creating new java files
au bufnewfile *.java 0r ~/.vim/java_header.temp

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""" VUMBLE START https://github.com/VundleVim/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Keep Plugin commands between vundle#begin/end.
Plugin 'dodie/vim-disapprove-deep-indentation'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"""""" VUMBLE END
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
