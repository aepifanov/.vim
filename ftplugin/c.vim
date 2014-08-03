
set cindent

set colorcolumn=80

"    CScope find global
map  <F3>            :cs f g <c-r>=expand("<cword>")<cr><cr>
imap <F3>       <esc>:cs f g <c-r>=expand("<cword>")<cr><cr>

"    CScope find calls
map  <F4>            :cs f c <c-r>=expand("<cword>")<cr><cr>
imap <F4>       <esc>:cs f c <c-r>=expand("<cword>")<cr><cr>

"   TListToggle
map  <F9>            :TlistToggle<cr>
imap <F9>       <esc>:TlistToggle<cr>
