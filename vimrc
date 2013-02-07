
"   Pathogen
filetype off
silent! call pathogen#runtime_append_all_bundles()
silent! call pathogen#helptags()
silent! call pathogen#infect()
filetype plugin indent on


"   Default vimrc
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"   Syntax highlighting
syntax      enable

"   ColorScheme
colorscheme andrey_black

"   Some settings
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
set foldopen=all                  " Auto open folding
set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains
                                  " Capital letter.
set nowrap                        " Turn on line wrapping.
set nobackup
set nofoldenable                  " Folding disable
set nowritebackup
set noswapfile
set novisualbell                  " No beeping.

"   Fugitive
"   Useful status information at bottom of screen
"   %{fugitive#statusline()}
set statusline=[%n]\ %<%.99f\ %h%w%m%r\ %{fugitive#statusline()}\ %=%-16(\ [%l,%c%V]\ %)%P

"   %%
cabbr <expr> %% substitute(expand('%:p:h'), getcwd() . '/', '', '')

"   Viewdoc
let g:no_viewdoc_maps = 1
let g:viewdoc_only = 1

"   Grep
let g:Grep_Default_Options = '-srnw --binary-files=without-match'
let g:Grep_Skip_Dirs = '.git .svn'
let g:Grep_Skip_Files = '*.bak, tags, *~'

"   SuperTab
let g:SuperTabDefaultCompletionType = "context"


""""""""""Keys"""""""""

"   Gundo
map <leader>g :GundoToggle<CR>

"   Set normal mode
map  <C-l>           :noh<cr>

"   Page Down/Up
map  <C-j>           <C-e>
map  <C-k>           <C-y>

"   NERDTreeToggle
map  <F1>            :NERDTree<cr>
imap <F1>       <esc>:NERDTree<cr>

"   Save file
map  <F2>            :w<cr>
imap <F2>       <esc>:w<cr>

"   Recursive Fast Grep
map  <F3>            :Rfgrep <cword><cr>
imap <F3>       <esc>:Rfgrep <cword><cr>

"
"map  <F4>            :
"imap <F4>       <esc>:

"   BufExplorer
map  <F5>            :BufExplorer<cr>
imap <F5>       <esc>:BufExplorer<cr>

"   Next buffer
map  <F6>            :bn<cr>
imap <F6>       <esc>:bn<cr>

"   Prev buffer
map  <F7>            :bp<cr>
imap <F7>       <esc>:bp<cr>

"   Del buffer
map  <F8>            :CloseFile<cr>
imap <F8>       <esc>:CloseFile<cr>

"   TListToggle
map  <F9>            :TlistToggle<cr>
imap <F9>       <esc>:TlistToggle<cr>

"   TagbarToggle
map  <F10>           :TagbarToggle<cr>
imap <F10>      <esc>:TagbarToggle<cr>

"    CTags
let g:ctags_regenerate=0
let Tlist_Ctags_Cmd='"ctags"'
map  <F11>           :!ctags -x %<cr>
imap <F11>      <esc>:!ctags -x %<cr>

"   PEP8
let g:pep8_map='<F12>'
"map  <F12>           :
"imap <F12>      <esc>:

command CloseFile call CleanClose(0)
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
