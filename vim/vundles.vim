filetype off

set rtp+=~/.dot/vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle (required)
Bundle "gmarik/vundle"


" Ruby, Rails, Rake...
Bundle "astashov/vim-ruby-debugger"
Bundle "ecomba/vim-ruby-refactoring"
Bundle "skwp/vim-ruby-conque"
Bundle "tpope/vim-rails.git"
Bundle "tpope/vim-rake.git"
Bundle "tpope/vim-rvm.git"
Bundle "vim-ruby/vim-ruby.git"
"TODO: add spec related here

" Git related
  Bundle 'tpope/vim-fugitive'
  " Git Browser
  Bundle "gregsexton/gitv"

" Cosmetics, color scheme, Powerline...
Bundle "Lokaltog/powerline.git", {'rtp': 'powerline/bindings/vim/'}
Bundle "rainux/vim-desert-warm-256"

" General text editing improvements...
  Bundle "vim-scripts/matchit.zip.git"
  " Multiline/singleline notation
  Bundle "AndrewRadev/splitjoin.vim"
  " Automatic closing of quotes, parenthesis, brackets
  Bundle "Raimondi/delimitMate"
  " Change inside surroundings
  Bundle "briandoll/change-inside-surroundings.vim.git"
  " Snippets & deps
  Bundle "MarcWeber/vim-addon-mw-utils"
  Bundle "tomtom/tlib_vim"
  Bundle "garbas/vim-snipmate"
  " Snippets pack 
  Bundle "honza/vim-snippets"

  " Bundle "godlygeek/tabular"
  
" General improvements
  Bundle "rking/ag.vim"
  Bundle "jistr/vim-nerdtree-tabs.git"
  Bundle "scrooloose/nerdtree.git"
  Bundle "kien/ctrlp.vim"
  Bundle "scrooloose/syntastic.git"
  " Dark theme
  Bundle "chriskempson/base16-vim"
  " Awesome undo tool
  Bundle "sjl/gundo.vim"
  Bundle "skwp/vim-conque"
  " Bundle "Valloric/YouCompleteMe"
  " Allow move in camelcase words
  Bundle "vim-scripts/camelcasemotion.git"
  " Automatically update tags on save
  Bundle "vim-scripts/AutoTag.git"
  " Open files with line number after colon
  Bundle "bogado/file-line.git"
  " Buffer and FS explorer
  Bundle "sjbach/lusty.git"
  " Ctags support & deps
  Bundle "xolox/vim-easytags"
  Bundle "xolox/vim-misc"
  " Autocomplete
  Bundle "Shougo/neocomplcache.git"
  
" HTML, CSS, Markdown, SASS ...
  " Markdown
  Bundle "jtratner/vim-flavored-markdown.git"
  Bundle "nelstrom/vim-markdown-preview"

  " Javascript
  Bundle "pangloss/vim-javascript"

  "Bundle "aaronjensen/vim-sass-status.git"
  Bundle "groenewege/vim-less.git"
  Bundle "itspriddle/vim-jquery.git"
  Bundle "kchmck/vim-coffee-script"
  Bundle "tpope/vim-haml"
   
