nmap <leader>n :NERDTreeToggle<CR>
nnoremap <silent> <C-\> :NERDTreeFind<CR>:vertical res 30<CR>

" Sudo to write
cnoremap w!! w !sudo tee % >/dev/null

" Typos
command! -bang E e<bang>
command! -bang Q q<bang>
command! -bang W w<bang>
