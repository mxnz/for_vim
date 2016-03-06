"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.
"  
"  Set 'nocompatible' to ward off unexpected things that your distro might
"  have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible
   
"  Attempt to determine the type of a file based on its name and possibly
"  its contents. Use this to allow intelligent auto-indenting for each
"  filetype, and for plugins that are filetype specific.
filetype indent plugin on
set tabstop=2
set shiftwidth=2               
set expandtab
set ai "auto indentation for new lines

set encoding=utf-8
set nowrap
   
" Enable syntax highlighting
syntax on
colorscheme monokai

"------------------------------------------------------------
"" Must have options {{{1
"
"" These are highly recommended options.
 
" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
" set hidden
  
" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
set confirm
" set autowriteall
 
" Better command-line completion
set wildmenu
  
" Show partial commands in the last line of the screen
set showcmd
   
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch
    
" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline

set number 
set ruler 

"------------------------------------------------------------
" Plugins
set runtimepath^=~/.vim/bundle/nerdtree
set runtimepath^=~/.vim/bundle/ag
set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/vim-bundler
set runtimepath^=~/.vim/bundle/vim-rails
set runtimepath^=~/.vim/bundle/vim-ruby
set runtimepath^=~/.vim/bundle/vim-slim
set runtimepath^=~/.vim/bundle/vim-multiple-cursors

let g:ctrlp_show_hidden = 1 
let NERDTreeShowHidden=1 

autocmd BufNewFile,BufRead *.slim set ft=slim

"------------------------------------------------------------
" Configure the form of cursor in terminals
if $TERM_PROGRAM =~ "iTerm" || $TERM_PROGRAM =~ "Terminator"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif


if has("gui_running") 
  set guifont=Inconsolata\ Medium\ 16
  set guicursor+=a:blinkon0 
  set guioptions-=L 
  set guioptions-=R 
  set guioptions-=r 
  set guioptions-=T
  colorscheme monokai 
  set bs=2 
endif

" Allow per project .vimrc
set exrc
set secure
