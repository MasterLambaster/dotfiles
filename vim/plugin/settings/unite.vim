let g:unite_split_rule = "botright"
let g:unite_force_overwrite_statusline = 0
let g:unite_winheight = 10


nnoremap <leader>p :<C-u>Unite  -buffer-name=files   -start-insert buffer file_rec/async:!<cr>


