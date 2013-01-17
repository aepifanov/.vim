
" Pathogen
filetype off
silent! call pathogen#runtime_append_all_bundles() 
silent! call pathogen#helptags()
silent! call pathogen#infect()
filetype on
filetype plugin indent on


" Default vimrc
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" Syntax highlighting 
syntax      enable
" Python
let python_highlight_all = 1
" ColorScheme
colorscheme andrey_black

" Some settings
set number                        " Enable line number
set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.
set backspace=indent,eol,start    " Intuitive backspacing.
set hidden                        " Handle multiple buffers better.
set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.
set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.
set number                        " Show line numbers.
set ruler                         " Show cursor position.
set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.
set nowrap                        " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.
set title                         " Set the terminal's title
set novisualbell                  " No beeping.
set autoread                      " auto reread file 
set hidden
set completeopt=longest,menuone   " enable auto complete ?
set browsedir=buffer              " set dir at current buffer(file)
set shiftwidth=4                  " size auto indent
set tabstop=4                     " size tabs
set softtabstop=4
set smarttab
set expandtab                     " change tabs on space
set foldenable                    " folding enable
set fdm=manual                    " manual folding
set foldopen=all                  " auto open folding
set nobackup
set nowritebackup
set noswapfile
set laststatus=2                  " Show the status line all the time
set nofoldenable

set colorcolumn=80


" Useful status information at bottom of screen
" Fugitive
"   %{fugitive#statusline()}
set statusline=[%n]\ %<%.99f\ %h%w%m%r\ %=%-16(\ [%l,%c%V]\ %)%P

" %%
cabbr <expr> %% substitute(expand('%:p:h'), getcwd() . '/', '', '')


"    set normal mode
map  <C-l>           :noh<cr>

map  <C-j>           <C-e>
map  <C-k>           <C-y>

" NERDTreeToggle
map  <F1>            :NERDTree<cr>
imap <F1>       <esc>:NERDTree<cr>

"    save file
map  <F2>            :w<cr>
imap <F2>       <esc>:w<cr>

"    cscope find global
map  <F3>            :cs f g <c-r>=expand("<cword>")<cr><cr> 
imap <F3>       <esc>:cs f g <c-r>=expand("<cword>")<cr><cr>

"    cscope find global
map  <F4>            :cs f c <c-r>=expand("<cword>")<cr><cr> 
imap <F4>       <esc>:cs f c <c-r>=expand("<cword>")<cr><cr>

" BufExplorer
map  <F5>            :BufExplorer<cr>
imap <F5>       <esc>:BufExplorer<cr>

"    next buffer
map  <F6>            :bn<cr>
imap <F6>       <esc>:bn<cr>

"    prev buffer
map  <F7>            :bp<cr>
imap <F7>       <esc>:bp<cr>

"    del buffer
map  <F8>            :bd<cr>
imap <F8>       <esc>:bd<cr>

" TListToggle
map  <F9>            :TlistToggle<cr>
imap <F9>       <esc>:TlistToggle<cr>

" TagbarToggle
map  <F10>           :TagbarToggle<cr>
imap <F10>      <esc>:TagbarToggle<cr>

" CTags
let g:ctags_regenerate=0 
let Tlist_Ctags_Cmd='"ctags"' 
map  <F11>           :!ctags -x %<cr>
imap <F11>      <esc>:!ctags -x %<cr>

" PEP8
let g:pep8_map='<F12>'
"map  <F12>
"imap <F12>

" Gundo 
map <leader>g :GundoToggle<CR>

" SuperTab 
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview


" CScope
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

