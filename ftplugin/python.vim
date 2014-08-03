

let python_highlight_all = 1
let pymode_lint_checker = "pep8,mccabe"
let g:pymode_lint_ignore = ""

set colorcolumn=80

"   SuperTab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
