

let python_highlight_all = 1
let pymode_lint_checker = "pep8,mccabe"
let g:pymode_lint_ignore = ""

set colorcolumn=80

"   Gundo
map <leader>t :normal oimport ipdb; ipdb.set_trace()<cr>

"map  <F12>           :normal i import ipdb; ipdb:set_trace()^v<esc>
"imap <F12>      <esc>:normal i import ipdb; ipdb:set_trace()^v<esc>


"   SuperTab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
