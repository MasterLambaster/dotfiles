# VIM

## Plugins installes

### Ruby, Rails
[vim-ruby-debugger](https://github.com/astashov/vim-ruby-debugger)
[vim-ruby-refactoring](https://github.com/ecomba/vim-ruby-refactoring)
[vim-rails](https://github.com/tpope/vim-rails)
[vim-rake](https://github.com/tpope/vim-rake)
[vim-rvm](https://github.com/tpope/vim-rvm)
[vim-ruby](https://github.com/vim-ruby/vim-ruby)

### Git
[vim-fugitive](https://github.com/tpope/vim-fugitive)
[gitv](https://github.com/gregsexton/gitv)


### Editing
[matchit](https://github.com/vim-scripts/matchit.zip)
[splitjoin](https://github.com/AndrewRadev/splitjoin.vim)
[delimitMate](https://github.com/Raimondi/delimitMate)
[change-inside-surroundings](https://github.com/briandoll/change-inside-surroundings.vim)
[vim-snipmate](https://github.com/garbas/vim-snipmate)
[vim-snippets](https://github.com/honza/vim-snippets)
[tabular](https://github.com/godlygeek/tabular)
[camelcasemotion](https://github.com/vim-scripts/camelcasemotion)

### Tools
[ag](https://github.com/rking/ag.vim)
[nerdtree](https://github.com/scrooloose/nerdtree)
[ctrlp](https://github.com/kien/ctrlp.vim)
[syntastic](https://github.com/scrooloose/syntastic)
[gundo](https://github.com/sjl/gundo.vim)
[lusty](https://github.com/sjbach/lusty)

### HTML, CSS, Markdown, SASS ...

[vim-flavored-markdown](https://github.com/jtratner/vim-flavored-markdown.git)
[vim-markdown-preview](https://github.com/nelstrom/vim-markdown-preview)
[vim-javascript](https://github.com/pangloss/vim-javascript)
[vim-less](https://github.com/groenewege/vim-less)
[vim-jquery](https://github.com/itspriddle/vim-jquery)
[vim-coffee-script](https://github.com/kchmck/vim-coffee-script)
[vim-haml](https://github.com/tpope/vim-haml)

### Style
[powerline](https://github.com/Lokaltog/powerline.git)
[vim-desert-warm](https://github.com/rainux/vim-desert-warm-256)


## Hotkeys

⌘⇧t - New tab

### NerdTree
\n - NerdTree toggle
⌃\ - Reveal current file in NerdTree

    o   Open files, directories and bookmarks
    go  Open selected file, but leave cursor in the NERDTree
    t   Open selected node/bookmark in a new tab
    T   Same as 't' but keep the focus on the current tab
    i   Open selected file in a split window
    gi  Same as i, but leave the cursor on the NERDTree
    s   Open selected file in a new vsplit
    gs  Same as s, but leave the cursor on the NERDTree
    O   Recursively open the selected directory
    x   Close the current nodes parent
    X   Recursively close all children of the current node
    e   Edit the current dir
    D   Delete the current bookmark
    P   Jump to the root node
    p   Jump to current nodes parent
    K   Jump up inside directories at the current tree depth
    J   Jump down inside directories at the current tree depth
    <C-J>...Jump down to the next sibling of the current directory
    <C-K>...Jump up to the previous sibling of the current directory

    C.......Change the tree root to the selected dir
    u.......Move the tree root up one directory
    U.......Same as 'u' except the old root node is left open
    r.......Recursively refresh the current director
    R.......Recursively refresh the current root
    m.......Display the NERD tree menu
    cd......Change the CWD to the dir of the selected node
    CD......Change tree root to the CWD

    I.......Toggle whether hidden files displayed
    f.......Toggle whether the file filters are used
    F.......Toggle whether files are displayed
    B.......Toggle whether the bookmark table is displayed

    q.......Close the NERDTree window
    A.......Zoom (maximize/minimize) the NERDTree window
    ?.......Toggle the display of the quick help
    <CR> same as |NERDTree-o|.
    double-click same as the o.
    middle-click.......same as i for files, same as
                       e for dirs.

### CtrlP
⌘t - Go to file
⌘⇧P - Clear CtrlP cache

    ⌃f,⌃b - mode cycle
    ⌃d - filename only search
    ⌃r - regexp mode
    ⌃r - regexp mode
    ⌃t,⌃v,⌃x, - open selected in tab, vsplit, hsplit
    ⌃n,⌃p - select next/previous string in prompt's history
    ⌃y - create a new file and its parent directories
    ⌃z,⌃o - mark/unmark multiple files and open them

### Ag
⌘f - Find with Ag

    o    to open (same as enter)
    go   to preview file (open but maintain focus on ag.vim results)
    t    to open in new tab
    T    to open in new tab silently
    h    to open in horizontal split
    H    to open in horizontal split silently
    v    to open in vertical split
    gv   to open in vertical split silently
    q    to close the quickfix window

### Gundo
    \u - Toggle Gundo

### Matchit
*TODO*


### Ruby Debugger

    \db  Toggle breakpoint
    \dv  Open variables
    \dm  Open breakpoints
    \dt  Open frames
    \ds  Step
    \df  Finish
    \dn  Next
    \dc  Continue
    \de  Exit
    \dd  Remove all breakpoints

### Ruby refactoring

    rap  Add parameter
    rcpc Convert post conditional
    rel  Extract let(Rsepc)
    rec  Extract constant(visual)
    relv Extract local variable(visual)
    rit  Inline temp
    rrlv Rename local variable(visual or cursor)
    rriv Rename instance variable(visual)
    rem  Extract method(visual)

### Split & Join

    \ss - Split to multiline notation
    \sj - Join to single line notation

### Surrounding
    \ci - Change inside surrounding ({}, (), "", ><, [], '', ``)

### File & Buffer explorers

    \lf  - Opens filesystem explorer.
    \lr  - Opens filesystem explorer at the directory of the current file.
    \lb  - Opens buffer explorer.
    \lg  - Opens buffer grep.

