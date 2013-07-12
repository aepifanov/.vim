
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

set listchars=eol:$,tab:>-,trail:.,extends:>,precedes:<,nbsp:_

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
let Grep_Default_Options = '-sn --binary-files=without-match'
let Grep_Skip_Dirs = '.git .svn'
let Grep_Skip_Files = 'tags *.bak *~'
let Grep_Default_Filelist = '*.c *.cpp *.h *.py'

"   SuperTab
let g:SuperTabDefaultCompletionType = "context"

"   Conque
command Zsh call conque_term#open("zsh", ['belowright vsplit'])

""""""""""Keys"""""""""

"   Gundo
map <leader>g :GundoToggle<CR>

"   Set normal mode
map  <C-l>           :noh<cr>

"   Page Down/Up
map  <C-j>           <C-e>
map  <C-k>           <C-y>

"   NERDTreeToggle
let NERDTreeIgnore =['\.pyc$','\.o$']
map  <F1>            :NERDTree<cr>
imap <F1>       <esc>:NERDTree<cr>

"   Save file
map  <F2>            :w<cr>
imap <F2>       <esc>:w<cr>

"    CScope find global
map  <F3>            :cs f g <c-r>=expand("<cword>")<cr><cr>
imap <F3>       <esc>:cs f g <c-r>=expand("<cword>")<cr><cr>

"    CScope find calls
map  <F4>            :cs f c <c-r>=expand("<cword>")<cr><cr>
imap <F4>       <esc>:cs f c <c-r>=expand("<cword>")<cr><cr>

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

"   Recursive Fast Grep
map  <F11>           :Rfgrep <cword><cr>
imap <F11>      <esc>:Rfgrep <cword><cr>

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


"   Replace all TAB on SPACES
command! RetabIndents call RetabIndents()
map <leader>t :RetabIndents<CR>

func! RetabIndents()
	let saved_view = winsaveview()
	execute '%s@^\(\ \{'.&ts.'\}\)\+@\=repeat("\t", len(submatch(0))/'.&ts.')@e'
	call winrestview(saved_view)
endfunc

"   Automatically removing all trailing whitespace
highlight ExtraWhitespace ctermbg=red
match ExtraWhitespace /\s\+$/

autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

autocmd BufWritePre * :%s/\s\+$//e


"    Ctags generate tags
map <leader>ct :!ctags -R .<CR>

"    CScope generate base
map <leader>cs :!find . -iname '*.c' -o -iname '*.cpp' -o -iname '*.h' -o -iname '*.hpp' > cscope.files<CR>
			\:!cscope -b -i cscope.files -f cscope.out<CR>
			\:cs reset<CR>

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
