


"""" General Settings



" Default vimrc
if filereadable("/etc/vim/vimrc.local")
    source /etc/vim/vimrc.local
endif

syntax      enable
colorscheme black

set number                        " Show line numbers.
set ruler                         " Show cursor position.
set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.
set showmatch                     " Display the first match break
set backspace=indent,eol,start    " Intuitive backspacing.
set hidden                        " Handle multiple buffers better.
set title                         " Set the terminal's title
set laststatus=2                  " Show the status line all the time
set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.
set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.
set scrolloff=3                   " Show 3 lines of context around the cursor.
set autoread                      " Auto reread file
set autowrite                     " Auto write file on make
set completeopt=longest,menuone   " Enable auto complete ?
set browsedir=buffer              " Set dir at current buffer(file)
set shiftwidth=4                  " Size auto indent
set tabstop=4                     " Size tabs
set softtabstop=4
set expandtab                     " Change tabs on space
set smarttab
set smartindent
set modeline
set linebreak                     " Wrap only whole words
set fdm=manual                    " Manual folding
"set foldopen=all                  " Auto open folding
set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains
                                  " Capital letter.
set nowrap                        " Turn on line wrapping.
set nobackup
set nofoldenable                  " Folding disable
set nowritebackup
set noswapfile
set novisualbell                  " No beeping.

" StatusLine
set listchars=eol:$,tab:>-,trail:.,extends:>,precedes:<,nbsp:_

" %%
cabbr <expr> %% substitute(expand('%:p:h'), getcwd() . '/', '', '')



"""" Vundle Settings



set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
Plugin 'scrooloose/nerdtree'
Plugin 'thisivan/vim-bufexplorer'
Plugin 'vairix-amuhlethaler/grep_vim'
Plugin 'kien/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-eunuch'
"Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'
"Plugin 'powerman/vim-plugin-viewdoc'
Plugin 'sjl/gundo.vim'
"Plugin 'klen/python-mode'
Plugin 'me-vlad/python-syntax.vim'
"Plugin 'puppetlabs/puppet-syntax-vim'
"Plugin 'nsf/gocode', {'rtp': 'vim/'}
"Plugin 'fatih/vim-go'
"Plugin 'vim-scripts/Conque-GDB'
Plugin 'Shougo/vimshell'
Plugin 'Shougo/vimproc'
"Plugin 'sebdah/vim-delve'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
Plugin 'Raimondi/delimitMate'
Plugin 'pedrohdz/vim-yaml-folds'

" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'

" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



"""" Plugins Settings
let g:delve_backend = "native"

let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
let delimitMate_jump_expansion = 1

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-t>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"let delimitMate_jump_expansion = 1

"   Fugitive
" Useful status information at bottom of screen
" %{fugitive#statusline()}
set statusline=[%n]\ %<%.99f\ %h%w%m%r\ %{fugitive#statusline()}\ %=%-16(\ [%l,%c%V]\ %)%P


" SuperTab
let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabDefaultCompletionType = "context"

" Session
let g:session_autoload = 'no'
let g:session_autosave = 'yes'

" Viewdoc
let g:no_viewdoc_maps = 1
let g:viewdoc_only = 1

" Grep
let Grep_Default_Options = '-sn --binary-files=without-match'
let Grep_Skip_Dirs = '.git .svn'
let Grep_Skip_Files = 'tags *.bak *~'
let Grep_Default_Filelist = '*.c *.cc *.cpp *.h *.py *.go'

" NERDTreeToggle
let g:NERDTreeDirArrows=0
let NERDTreeIgnore =['\.pyc$','\.o$']

" CtrlP
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|o|pyc)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


"""" Keys

" Add jj as ESC
inoremap jj <ESC>

" Avoid problem with key Q
nnoremap Q <nop>

" Open .vimrc
map <leader>v :e ~/.vim/vimrc<cr>

" No number
map <leader>N :set number<cr>

" No number
map <leader>n :set nonumber<cr>

" Make
map <leader>m :make<cr>

" Gundo
map <leader>g :GundoToggle<cr>

" Set normal mode
map  <C-l>           :noh<cr>

" Page Down/Up
map  <C-j>           <C-e>
map  <C-k>           <C-y>


let g:go_test_timeout = '10s'
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_auto_sameids = 1

let g:go_def_mode='gopls'
let g:go_def_mod_mode='godef'
let g:go_info_mode='gopls'


" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
map <leader>gr :GoDebugStart<cr>
map <leader>gp :GoDebugStop<cr>
map <leader>gc :GoDebugContinue<cr>
map <leader>gn :GoDebugNext<cr>
map <leader>gs :GoDebugStep<cr>
map <leader>gb :GoDebugBreakpoint<cr>


" NERDTreeToggle
map  <F1>            :NERDTreeToggle<cr>
imap <F1>       <esc>:NERDTreeToggle<cr>

" Save file
map  <F2>            :w<cr>
imap <F2>       <esc>:w<cr>

"
"map  <F3>            :GoDef
"imap <F3>       <esc>:

"
"map  <F4>            :
"imap <F4>       <esc>:

" BufExplorer
map  <F5>            :BufExplorer<cr>
imap <F5>       <esc>:BufExplorer<cr>

" Next buffer
map  <F6>            :bn<cr>
imap <F6>       <esc>:bn<cr>

" Prev buffer
map  <F7>            :bp<cr>
imap <F7>       <esc>:bp<cr>

" Del buffer
map  <F8>            :CloseFile<cr>
imap <F8>       <esc>:CloseFile<cr>

" Recursive Fast Grep
map  <F9>           :Rfgrep <cword><cr>
imap <F9>      <esc>:Rfgrep <cword><cr>

" TagbarToggle
map  <F10>           :TagbarToggle<cr>
imap <F10>      <esc>:TagbarToggle<cr>

"
"map  <F11>            :
"imap <F11>       <esc>:

" Man
map  <F12>           :man <cword><cr>>
imap <F12>      <esc>:man <cword><cr>>



"""" Close Command Handling



command! CloseFile call CleanClose(0)
function! CleanClose(tosave)
    if (a:tosave == 1)
        w!
    endif
    let todelbufNr = bufnr("%")
    let newbufNr = bufnr("#")
    if ((newbufNr != -1) && (newbufNr != todelbufNr) && buflisted(newbufNr))
        exe "b".newbufNr
    else
        bnext
    endif

    if (bufnr("%") == todelbufNr)
        new
    endif
    exe "bd".todelbufNr
endfunction



"""" Tabs and whitespaces



"   Show hidden files
"   set list
"   retab
command! -range=% -nargs=0 Tab2Space execute '<line1>,<line2>s#^\t\+#\=repeat(" ", len(submatch(0))*' . &ts . ')'
command! -range=% -nargs=0 Space2Tab execute '<line1>,<line2>s#^\( \{'.&ts.'\}\)\+#\=repeat("\t", len(submatch(0))/' . &ts . ')'

"   Automatically removing all trailing whitespace
highlight ExtraWhitespace ctermbg=red
match ExtraWhitespace /\s\+$/

autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

autocmd BufWritePre * :%s/\s\+$//e


"""" Ctags and CScope

" CScope
function! CScopeAttach()
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
endfunction

" Auto attaching CScope
call CScopeAttach()

" Ctags generate tags
map <leader>ct :!ctags -R .<cr>

" CScope generate base
map <leader>cs :!find . -iname '*.c' -o -iname '*.cpp' -o -iname '*.h' -o -iname '*.hpp' > cscope.files<cr>
            \:!cscope -b -i cscope.files -f cscope.out<cr>
            \:cs reset<cr>

" Attach CScope
map <leader>ca :call CScopeAttach()<cr>



""""" Autoswitching to the paste mode

"set paste
"set nopaste
"
"nnoremap <F2> :set invpaste paste?<CR>
"set pastetoggle=<F2>
"set showmode

"Automatically set paste mode in Vim when pasting in insert mode
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
endfunction

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

function! LineBreakAt(bang, ...) range
  let save_search = @/
  if empty(a:bang)
    let before = ''
    let after = '\ze.'
    let repl = '&\r'
  else
    let before = '.\zs'
    let after = ''
    let repl = '\r&'
  endif
  let pat_list = map(deepcopy(a:000), "escape(v:val, '/\\.*$^~[')")
  let find = empty(pat_list) ? @/ : join(pat_list, '\|')
  let find = before . '\%(' . find . '\)' . after
  " Example: 10,20s/\%(arg1\|arg2\|arg3\)\ze./&\r/ge
  execute a:firstline . ',' . a:lastline . 's/'. find . '/' . repl . '/ge'
  let @/ = save_search
endfunction


"""" Autoreload vimrc
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

