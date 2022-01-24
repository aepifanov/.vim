" Vim color file
" Maintainer:   Andrey Epifanov
" Last Change:  2010 Oct 4

" First remove all existing highlighting.

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "black"

hi Visual       term=reverse        cterm=reverse guibg=Grey
"hi Visual       ctermbg=Black
hi Normal       ctermbg=Black       ctermfg=White
hi NonText                          ctermfg=Yellow
hi ErrorMsg     ctermbg=Red         ctermfg=White
hi Cursor       ctermbg=Black       ctermfg=Black
hi Directory                        ctermfg=Blue
hi LineNr       ctermbg=Blue        ctermfg=White
hi MoreMsg                          ctermfg=Red
hi Question                         ctermfg=Green
hi Search       ctermbg=White       ctermfg=Black
hi SpecialKey                       ctermfg=Green
hi Title                            ctermfg=Magenta
hi WarningMsg                       ctermfg=Red
hi WildMenu     ctermbg=White       ctermfg=Black
hi Folded       ctermbg=Grey        ctermfg=Blue
hi FoldColumn   ctermbg=Grey        ctermfg=DarkBlue
hi DiffAdd      ctermbg=Green
hi DiffChange   ctermbg=Yellow
hi DiffDelete   ctermbg=Red         ctermfg=White
hi DiffText     ctermbg=Red
hi MatchParen   ctermbg=Red         ctermfg=White
hi CLibMacros                       ctermfg=DarkGreen
hi CLibFunc                         ctermfg=Blue
hi CLibFuncFail                     ctermfg=Red
hi Constant                         ctermfg=Green
hi Special                          ctermfg=Yellow
hi Statement                        ctermfg=Green
hi String                           ctermfg=Magenta
hi Comment                          ctermfg=Grey
hi Identifier                       ctermfg=Green
hi Include                          ctermfg=DarkGreen
hi PreProc                          ctermfg=DarkGreen
hi Operator                         ctermfg=Blue
hi Define                           ctermfg=DarkGreen
hi Type                             ctermfg=DarkCyan
hi Structure                        ctermfg=Green
hi Todo         ctermbg=Red         ctermfg=Yellow
hi Label                            ctermfg=DarkMagenta
hi Pmenu        ctermbg=Blue        ctermfg=White
hi PmenuSel     ctermbg=White       ctermfg=Black

hi Normal       guibg=Black       guifg=White
hi NonText                          guifg=Yellow
hi ErrorMsg     guibg=Red         guifg=White
hi Cursor       guibg=White       guifg=Black
hi Directory                        guifg=Blue
hi LineNr       guibg=Blue        guifg=White
hi MoreMsg                          guifg=Red
hi Question                         guifg=Green
hi Search       guibg=White       guifg=Black
hi SpecialKey                       guifg=Green
hi Title                            guifg=Magenta
hi WarningMsg                       guifg=Red
hi WildMenu     guibg=White       guifg=Black
hi Folded       guibg=Grey        guifg=Blue
hi FoldColumn   guibg=Grey        guifg=DarkBlue
hi DiffAdd      guibg=Green
hi DiffChange   guibg=Yellow
hi DiffDelete   guibg=Red         guifg=White
hi DiffText     guibg=Red
hi MatchParen   guibg=Red         guifg=White
hi CLibMacros                       guifg=DarkGreen
hi CLibFunc                         guifg=Blue
hi CLibFuncFail                     guifg=Red
hi Constant                         guifg=Green
hi Special                          guifg=Yellow
hi Statement                        guifg=Green
hi String                           guifg=Magenta
hi Comment                          guifg=Grey
hi Identifier                       guifg=Green
hi Include                          guifg=DarkGreen
hi PreProc                          guifg=DarkGreen
hi Operator                         guifg=Blue
hi Define                           guifg=DarkGreen
hi Type                             guifg=DarkCyan
hi Structure                        guifg=Green
hi Todo         guibg=Red         guifg=Yellow
hi Label                            guifg=DarkMagenta
hi Pmenu        guibg=Blue        guifg=White
hi PmenuSel     guibg=White       guifg=Black


set guifont=Monaco:h14
set guicursor=n-v-c:ver25-Cursor
set guicursor+=i:block-Cursor
set guicursor+=n-v-c:blinkon0
