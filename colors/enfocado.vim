" -----------------------------------------------------------------------------
" Name:        Vim Enfocado
" Author:      Wuelner Martínez <wuelner.martinez@outlook.com>
" URL:         https://github.com/wuelnerdotexe/vim-enfocado
" License:     MIT (C) Wuelner Martínez.
" Description: How the themes should be.
" About:       Enfocado is more than a theme, it is a concept of "how the
"              themes should be", focusing on what is really important to
"              developers: the code and nothing else.
" -----------------------------------------------------------------------------

" Vim dark mode is activated.
set background=dark

" Remove all existing highlighting.
highlight clear
if exists("syntax_on")
  syntax reset
endif

" Colorscheme name.
let g:colors_name = "enfocado"

" Selenized black colorscheme (termguicolors).
let s:colors_gui = {
    \ 'black'         : '#252525',
    \ 'red'           : '#ED4A46',
    \ 'green'         : '#70B433',
    \ 'yellow'        : '#DBB32D',
    \ 'blue'          : '#368AEB',
    \ 'purple'        : '#EB6EB7',
    \ 'cyan'          : '#3FC5B7',
    \ 'white'         : '#B9B9B9',
    \ 'bright_black'  : '#3B3B3B',
    \ 'bright_red'    : '#FF5E56',
    \ 'bright_green'  : '#83C746',
    \ 'bright_yellow' : '#EFC541',
    \ 'bright_blue'   : '#4F9CFE',
    \ 'bright_purple' : '#FF81CA',
    \ 'bright_cyan'   : '#56D8C9',
    \ 'bright_white'  : '#DEDEDE',
    \ 'background'    : '#181818',
    \ 'foreground'    : '#DEDEDE',
    \ 'dim'           : '#777777',
    \ 'orange'        : '#E67F43',
    \ 'violet'        : '#A580E2',
    \ 'bright_orange' : '#FA9153',
    \ 'bright_violet' : '#B891F5'
    \ }

" Enfocado black colorscheme (256 cterm colors).
let s:colors_term = {
    \ 'black'         : 235,
    \ 'red'           : 203,
    \ 'green'         : 107,
    \ 'yellow'        : 179,
    \ 'blue'          : 69,
    \ 'purple'        : 205,
    \ 'cyan'          : 79,
    \ 'white'         : 250,
    \ 'bright_black'  : 237,
    \ 'bright_red'    : 203,
    \ 'bright_green'  : 113,
    \ 'bright_yellow' : 221,
    \ 'bright_blue'   : 75,
    \ 'bright_purple' : 212,
    \ 'bright_cyan'   : 80,
    \ 'bright_white'  : 253,
    \ 'background'    : 234,
    \ 'foreground'    : 253,
    \ 'dim'           : 243,
    \ 'orange'        : 173,
    \ 'violet'        : 140,
    \ 'bright_orange' : 209,
    \ 'bright_violet' : 141
    \ }

" Attributes. 
let s:attributes = {
    \ 'none'    : 'NONE',
    \ 'reverse' : 'reverse',
    \ }

" Text types.
let s:text_types = {
    \ 'bold'        : 'bold',
    \ 'bold_italic' : 'bold,italic',
    \ 'italic'      : 'italic',
    \ 'underline'   : 'underline'
    \ }

" All environment.
exe "highlight Normal                term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.background."    guibg=".s:colors_gui.background."    ctermfg=".s:colors_term.foreground."    guifg=".s:colors_gui.foreground

" Interface elements.
exe "highlight ColorColumn           term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:attributes.none."           guifg=".s:attributes.none
exe "highlight Conceal               term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.dim."           guifg=".s:colors_gui.dim
exe "highlight CursorColumn          term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:attributes.none."           guifg=".s:attributes.none
exe "highlight CursorLine            term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:attributes.none."           guifg=".s:attributes.none
exe "highlight CursorLineNr          term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:colors_term.dim."           guifg=".s:colors_gui.dim
exe "highlight Directory             term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_green."  guifg=".s:colors_gui.bright_green
exe "highlight Error                 term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_red."    guifg=".s:colors_gui.bright_red
exe "highlight ErrorMsg              term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_red."    guifg=".s:colors_gui.bright_red
exe "highlight FoldColumn            term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:attributes.none."           guifg=".s:attributes.none
exe "highlight Folded                term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:colors_term.dim."           guifg=".s:colors_gui.dim
exe "highlight LineNr                term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_black."  guifg=".s:colors_gui.bright_black
exe "highlight MsgArea               term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.dim."           guifg=".s:colors_gui.dim
exe "highlight ModeMsg               term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.foreground."    guifg=".s:colors_gui.foreground
exe "highlight MoreMsg               term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.green."         guifg=".s:colors_gui.green
exe "highlight NonText               term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_black."  guifg=".s:colors_gui.bright_black
exe "highlight Pmenu                 term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:colors_term.dim."           guifg=".s:colors_gui.dim 
exe "highlight PmenuSbar             term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.bright_black."  guibg=".s:colors_gui.bright_black."  ctermfg=".s:colors_term.bright_black."  guifg=".s:colors_gui.bright_black
exe "highlight PmenuSel              term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:colors_term.bright_black."  guibg=".s:colors_gui.bright_black."  ctermfg=".s:colors_term.foreground."    guifg=".s:colors_gui.foreground
exe "highlight PmenuThumb            term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.dim."           guibg=".s:colors_gui.dim."           ctermfg=".s:colors_term.dim."           guifg=".s:colors_gui.dim
exe "highlight Question              term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_yellow." guifg=".s:colors_gui.bright_yellow
exe "highlight QuickFixLine          term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:colors_term.bright_black."  guibg=".s:colors_gui.bright_black."  ctermfg=".s:attributes.none."           guifg=".s:attributes.none
exe "highlight SignColumn            term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:attributes.none."           guifg=".s:attributes.none
exe "highlight SpecialKey            term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_black."  guifg=".s:colors_gui.bright_black
exe "highlight StatusLine            term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:colors_term.dim."           guifg=".s:colors_gui.dim
exe "highlight StatusLineNC          term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:colors_term.bright_black."  guifg=".s:colors_gui.bright_black
exe "highlight StatusLineTerm        term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:colors_term.dim."           guifg=".s:colors_gui.dim
exe "highlight StatusLineTermNC      term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:colors_term.bright_black."  guifg=".s:colors_gui.bright_black
exe "highlight TabLine               term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:colors_term.bright_black."  guifg=".s:colors_gui.bright_black
exe "highlight TabLineFill           term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:colors_term.bright_black."  guifg=".s:colors_gui.bright_black
exe "highlight TabLineSel            term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.background."    guibg=".s:colors_gui.background."    ctermfg=".s:colors_term.dim."           guifg=".s:colors_gui.dim
exe "highlight ToolbarButton         term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:colors_term.dim."           guifg=".s:colors_gui.dim
exe "highlight ToolbarLine           term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.bright_black."  guibg=".s:colors_gui.bright_black."  ctermfg=".s:colors_term.bright_black."  guifg=".s:colors_gui.bright_black
exe "highlight VertSplit             term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:colors_term.black."         guifg=".s:colors_gui.black
exe "highlight Visual                term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:colors_term.bright_black."  guibg=".s:colors_gui.bright_black."  ctermfg=".s:attributes.none."           guifg=".s:attributes.none
exe "highlight WarningMsg            term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_orange." guifg=".s:colors_gui.bright_orange
exe "highlight WildMenu              term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:colors_term.black."         guibg=".s:colors_gui.black."         ctermfg=".s:colors_term.foreground."    guifg=".s:colors_gui.foreground

" Spell check.
exe "highlight SpellBad              term=".s:text_types.underline."   cterm=".s:text_types.underline."   gui=".s:text_types.underline."   ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:attributes.none."           guifg=".s:attributes.none."          guisp=".s:colors_gui.bright_red
exe "highlight SpellCap              term=".s:text_types.underline."   cterm=".s:text_types.underline."   gui=".s:text_types.underline."   ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:attributes.none."           guifg=".s:attributes.none."          guisp=".s:colors_gui.bright_orange
exe "highlight SpellLocal            term=".s:text_types.underline."   cterm=".s:text_types.underline."   gui=".s:text_types.underline."   ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:attributes.none."           guifg=".s:attributes.none."          guisp=".s:colors_gui.bright_yellow
exe "highlight SpellRare             term=".s:text_types.underline."   cterm=".s:text_types.underline."   gui=".s:text_types.underline."   ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:attributes.none."           guifg=".s:attributes.none."          guisp=".s:colors_gui.bright_purple

" Search.
exe "highlight IncSearch             term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:colors_term.bright_cyan."   guibg=".s:colors_gui.bright_cyan."   ctermfg=".s:colors_term.black."         guifg=".s:colors_gui.black
exe "highlight Search                term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:colors_term.bright_green."  guibg=".s:colors_gui.bright_green."  ctermfg=".s:colors_term.black."         guifg=".s:colors_gui.black

" Diff code.
exe "highlight DiffAdd               term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_green."  guifg=".s:colors_gui.bright_green
exe "highlight DiffChange            term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_yellow." guifg=".s:colors_gui.bright_yellow
exe "highlight DiffDelete            term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_red."    guifg=".s:colors_gui.bright_red
exe "highlight DiffText              term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:colors_term.bright_yellow." guibg=".s:colors_gui.bright_yellow." ctermfg=".s:colors_term.black."         guifg=".s:colors_gui.black

" Main code syntax.
exe "highlight Comment               term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.dim."           guifg=".s:colors_gui.dim
exe "highlight Constant              term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.foreground."    guifg=".s:colors_gui.foreground
exe "highlight Identifier            term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_green."  guifg=".s:colors_gui.bright_green
exe "highlight Ignore                term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.black."         guifg=".s:colors_gui.black
exe "highlight MatchParen            term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:colors_term.bright_black."  guibg=".s:colors_gui.bright_black."  ctermfg=".s:attributes.none."           guifg=".s:attributes.none
exe "highlight PreProc               term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.blue."          guifg=".s:colors_gui.blue
exe "highlight Special               term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_cyan."   guifg=".s:colors_gui.bright_cyan
exe "highlight Statement             term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.blue."          guifg=".s:colors_gui.blue
exe "highlight Title                 term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_blue."   guifg=".s:colors_gui.bright_blue
exe "highlight Todo                  term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:colors_term.yellow."        guibg=".s:colors_gui.yellow."        ctermfg=".s:colors_term.black."         guifg=".s:colors_gui.black
exe "highlight Type                  term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.blue."          guifg=".s:colors_gui.blue
exe "highlight Underlined            term=".s:text_types.underline."   cterm=".s:text_types.underline."   gui=".s:text_types.underline."   ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:attributes.none."           guifg=".s:attributes.none."          guisp=".s:attributes.none

" Only Neovim.
if has('nvim')

" Cursors and visual selections.
exe "highlight Cursor                term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:colors_term.dim."           guibg=".s:colors_gui.dim."           ctermfg=".s:attributes.none."           guifg=".s:attributes.none
exe "highlight TermCursor            term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:colors_term.dim."           guibg=".s:colors_gui.dim."           ctermfg=".s:attributes.none."           guifg=".s:attributes.none

" Float windows.
exe "highlight FloatShadow           term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=0                               guibg=#000000                        blend=80"
exe "highlight FloatShadowThrough    term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=0                               guibg=#000000                        blend=100"

" Neovim errors.
exe "highlight NvimInternalError     term=".s:text_types.bold."        cterm=".s:text_types.bold."        gui=".s:text_types.bold."        ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_red."    guifg=".s:colors_gui.bright_red

" Debug redraws.
exe "highlight RedrawDebugClear      term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.bright_orange." guibg=".s:colors_gui.bright_orange." ctermfg=".s:colors_term.black."         guifg=".s:colors_gui.black
exe "highlight RedrawDebugComposed   term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.bright_green."  guibg=".s:colors_gui.bright_green."  ctermfg=".s:colors_term.black."         guifg=".s:colors_gui.black
exe "highlight RedrawDebugNormal     term=".s:attributes.reverse."     cterm=".s:attributes.reverse."     gui=".s:attributes.reverse."     ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:attributes.none."           guifg=".s:attributes.none
exe "highlight RedrawDebugRecompose  term=".s:attributes.none."        cterm=".s:attributes.none."        gui=".s:attributes.none."        ctermbg=".s:colors_term.bright_red."    guibg=".s:colors_gui.bright_red."    ctermfg=".s:colors_term.black."         guifg=".s:colors_gui.black

" Treesitter msg alerts.
highlight! link TSDanger  ErrorMsg
highlight! link TSWarning WarningMsg

" Treesitter human text.
exe "highlight TSAnnotation          term=".s:text_types.italic."      cterm=".s:text_types.italic."      gui=".s:text_types.italic."      ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.blue."          guifg=".s:colors_gui.blue
exe "highlight TSBoolean             term=".s:text_types.italic."      cterm=".s:text_types.italic."      gui=".s:text_types.italic."      ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.foreground."    guifg=".s:colors_gui.foreground
exe "highlight TSComment             term=".s:text_types.italic."      cterm=".s:text_types.italic."      gui=".s:text_types.italic."      ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.dim."           guifg=".s:colors_gui.dim
exe "highlight TSLiteral             term=".s:text_types.italic."      cterm=".s:text_types.italic."      gui=".s:text_types.italic."      ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.foreground."    guifg=".s:colors_gui.foreground
exe "highlight TSMethod              term=".s:text_types.italic."      cterm=".s:text_types.italic."      gui=".s:text_types.italic."      ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_green."  guifg=".s:colors_gui.bright_green
exe "highlight TSNote                term=".s:text_types.italic."      cterm=".s:text_types.italic."      gui=".s:text_types.italic."      ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_cyan."   guifg=".s:colors_gui.bright_cyan
exe "highlight TSTextReference       term=".s:text_types.italic."      cterm=".s:text_types.italic."      gui=".s:text_types.italic."      ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.foreground."    guifg=".s:colors_gui.foreground
exe "highlight TSTitle               term=".s:text_types.bold_italic." cterm=".s:text_types.bold_italic." gui=".s:text_types.bold_italic." ctermbg=".s:attributes.none."           guibg=".s:attributes.none."          ctermfg=".s:colors_term.bright_blue."   guifg=".s:colors_gui.bright_blue

endif
