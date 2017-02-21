filetype off

set rtp+=~/.dot/vim/bundle/neobundle/
call neobundle#begin(expand('~/.dot/vim/bundle/'))

" Let NeoNeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'


" Ruby, Rails, Rake...
NeoBundle "astashov/vim-ruby-debugger"
NeoBundle "ecomba/vim-ruby-refactoring"
NeoBundle "skwp/vim-ruby-conque"
NeoBundle "tpope/vim-rails.git"
NeoBundle "tpope/vim-rake.git"
NeoBundle "tpope/vim-rvm.git"
NeoBundle "vim-ruby/vim-ruby.git"
"TODO: add spec related here

" Git related
  NeoBundle 'tpope/vim-fugitive'
  " Git Browser
  NeoBundle "gregsexton/gitv"

" Cosmetics, color scheme, airline ...
NeoBundle 'bling/vim-airline'
NeoBundle "rainux/vim-desert-warm-256"

NeoBundle 'morhetz/gruvbox'

" General text editing improvements...
  NeoBundle "vim-scripts/matchit.zip.git"
  " Multiline/singleline notation
  NeoBundle "AndrewRadev/splitjoin.vim"
  " Automatic closing of quotes, parenthesis, brackets
  NeoBundle "Raimondi/delimitMate"
  " Change inside surroundings
  NeoBundle "briandoll/change-inside-surroundings.vim.git"
  " Snippets & deps
  NeoBundle "MarcWeber/vim-addon-mw-utils"
  NeoBundle "tomtom/tlib_vim"
  NeoBundle "garbas/vim-snipmate"
  " Snippets pack
  NeoBundle "honza/vim-snippets"
  " Allow move in camelcase words
  NeoBundle "vim-scripts/camelcasemotion.git"
  NeoBundle "t9md/vim-choosewin"
  " NeoBundle "godlygeek/tabular"

" General improvements
  NeoBundle "rking/ag.vim"
  NeoBundle "jistr/vim-nerdtree-tabs.git"
  NeoBundle "scrooloose/nerdtree.git"
  NeoBundle "kien/ctrlp.vim"
  NeoBundle "scrooloose/syntastic.git"
  " Dark theme
  NeoBundle "chriskempson/base16-vim"
  " Awesome undo tool
  NeoBundle "sjl/gundo.vim"
  NeoBundle "skwp/vim-conque"
  NeoBundle "Valloric/YouCompleteMe"
  NeoBundle "marijnh/tern_for_vim"
  " Automatically update tags on save
  " It's slowing down the vim
  "NeoBundle "vim-scripts/AutoTag.git"
  " Open files with line number after colon
  NeoBundle "bogado/file-line.git"
  " Ctags support & deps
  "NeoBundle "xolox/vim-easytags"
  "NeoBundle "xolox/vim-misc"
  " Autocomplete
  NeoBundle "Shougo/neocomplcache.git"

" HTML, CSS, Markdown, SASS ...
  " Markdown
  NeoBundle "jtratner/vim-flavored-markdown.git"
  NeoBundle "nelstrom/vim-markdown-preview"

  " Javascript
  NeoBundle "pangloss/vim-javascript"
  NeoBundle "posva/vim-vue"

  "NeoBundle "aaronjensen/vim-sass-status.git"
  NeoBundle "groenewege/vim-less.git"
  NeoBundle "itspriddle/vim-jquery.git"
  NeoBundle "kchmck/vim-coffee-script"
  NeoBundle "tpope/vim-haml"

  NeoBundle "wting/rust.vim"

call neobundle#end()
