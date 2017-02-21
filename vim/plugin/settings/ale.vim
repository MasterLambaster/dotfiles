" Run lint only on save not on change
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

" Configure look of the error reporting
let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'

" Use only eslint linter
let g:ale_linters = {
\   'javascript': ['eslint'],
\}
