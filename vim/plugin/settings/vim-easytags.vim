" Easy Tags Config

" Use project specific tags
set tags=./tags;
let g:easytags_dynamic_files = 1

" Update tags on write
let g:easytags_events = ['BufWritePost']

