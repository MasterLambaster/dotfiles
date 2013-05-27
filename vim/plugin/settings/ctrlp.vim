" Ignores 
let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|\.hg$\|\.svn$\',
  \ 'file': '\.o$\',
\}


" Default to filename searches - so that appctrl will find application
" controller
let g:ctrlp_by_filename = 1

"let g:ctrlp_map = '<D-t>'
if has("gui_macvim") && has("gui_running")
  " Open search window
  
  map <D-t> :CtrlP<CR>
  imap <D-t> <ESC>:CtrlP<CR>
  " Refresh command
  nnoremap <silent> <D-P> :ClearCtrlPCache<cr>
endif


" Jump functionality
map <leader>jm :CloseSingleConque<CR>:CtrlP app/models<CR>
map <leader>jc :CloseSingleConque<CR>:CtrlP app/controllers<CR>
map <leader>jv :CloseSingleConque<CR>:CtrlP app/views<CR>
map <leader>jh :CloseSingleConque<CR>:CtrlP app/helpers<CR>
map <leader>jl :CloseSingleConque<CR>:CtrlP lib<CR>
map <leader>jp :CloseSingleConque<CR>:CtrlP public<CR>
map <leader>js :CloseSingleConque<CR>:CtrlP spec<CR>
map <leader>jf :CloseSingleConque<CR>:CtrlP fast_spec<CR>
map <leader>jd :CloseSingleConque<CR>:CtrlP db<CR>
map <leader>jC :CloseSingleConque<CR>:CtrlP config<CR>
map <leader>jV :CloseSingleConque<CR>:CtrlP vendor<CR>
map <leader>jF :CloseSingleConque<CR>:CtrlP factories<CR>
map <leader>jT :CloseSingleConque<CR>:CtrlP test<CR>

