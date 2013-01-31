


set cindent
set colorcolumn=81

"    CScope find global
"map  <F3>            :cs f g <c-r>=expand("<cword>")<cr><cr>
"imap <F3>       <esc>:cs f g <c-r>=expand("<cword>")<cr><cr>

"    CScope find calls
"map  <F4>            :cs f c <c-r>=expand("<cword>")<cr><cr>
"imap <F4>       <esc>:cs f c <c-r>=expand("<cword>")<cr><cr>

"    CScope
if has("cscope")
    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    set cscopetag

    " show msg when any other cscope db added
    "set cscopeverbose

    if filereadable("cscope.out")
        cs add cscope.out
        " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
endif " has("cscope")


"   Automatically removing all trailing whitespace
highlight ExtraWhitespace ctermbg=red
match ExtraWhitespace /\s\+$/

autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

autocmd BufWritePre * :%s/\s\+$//e
