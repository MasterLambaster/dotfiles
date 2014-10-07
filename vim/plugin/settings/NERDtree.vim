let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30
let NERDTreeShowHidden=1
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.git']
" Jump in nerd tree means vim cd

"autocmd AuNERDTreeCmd FocusGained * call s:UpdateNERDTree()

  " NERDTree utility function
  function s:UpdateNERDTree(...)
    let stay = 0

    if(exists("a:1"))
      let stay = a:1
    end

    if exists("t:NERDTreeBufName")
      let nr = bufwinnr(t:NERDTreeBufName)
      if nr != -1
        exe nr . "wincmd w"
        exe substitute(mapcheck("R"), "<CR>", "", "")
        if !stay
          wincmd p
        end
      endif
    endif
  endfunction
