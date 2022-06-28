" -----------------------------------------------------------------------------
" Name:        Enfocado for Vim
" Author:      Wuelner Martínez <wuelner.martinez@outlook.com>
" URL:         https://github.com/wuelnerdotexe/vim-enfocado
" License:     MIT (C) Wuelner Martínez.
" Description: How themes should be.
" About:       Enfocado is more than a theme, it is a concept of 'how themes
"              should be', focusing on what is really important to developers:
"              the code and nothing else.
" -----------------------------------------------------------------------------

" The script ends if the theme is not supported.
if !(has('termguicolors') && &termguicolors)
      \ && !has('gui_running') && &t_Co != 256
  finish
endif

" The Enfocado theme is initialized.
let g:colors_name = 'enfocado'

" All highlights are removed.
if !exists('syntax_on')
  syntax on | syntax reset
else
  syntax reset
endif

" Get the color scheme.
let s:colorScheme = enfocado#getColorScheme()

" The color scheme to use are assigned.
let s:bg_0 = s:colorScheme.bg_0
let s:bg_1 = s:colorScheme.bg_1
let s:bg_2 = s:colorScheme.bg_2
let s:dim_0 = s:colorScheme.dim_0
let s:fg_0 = s:colorScheme.fg_0
let s:fg_1 = s:colorScheme.fg_1

let s:red = s:colorScheme.red
let s:green = s:colorScheme.green
let s:yellow = s:colorScheme.yellow
let s:blue = s:colorScheme.blue
let s:magenta = s:colorScheme.magenta
let s:cyan = s:colorScheme.cyan
let s:orange = s:colorScheme.orange
let s:violet = s:colorScheme.violet

let s:br_red = s:colorScheme.br_red
let s:br_green = s:colorScheme.br_green
let s:br_yellow = s:colorScheme.br_yellow
let s:br_blue = s:colorScheme.br_blue
let s:br_magenta = s:colorScheme.br_magenta
let s:br_cyan = s:colorScheme.br_cyan
let s:br_orange = s:colorScheme.br_orange
let s:br_violet = s:colorScheme.br_violet

let s:base = s:colorScheme.base

" Attributes are declared.
let s:none = ['NONE', 'NONE']
let s:bold = ['bold', 'bold']
let s:bold_italic = ['bold,italic', 'bold,italic']
let s:italic = ['italic', 'italic']
let s:underline = ['underline', 'underline']
let s:undercurl = ['undercurl', 'underline']

" Vim terminal variables are assigned.
let g:terminal_ansi_colors = [
      \ s:bg_1[0],
      \ s:red[0],
      \ s:green[0],
      \ s:yellow[0],
      \ s:blue[0],
      \ s:magenta[0],
      \ s:cyan[0],
      \ s:dim_0[0],
      \ s:bg_2[0],
      \ s:br_red[0],
      \ s:br_green[0],
      \ s:br_yellow[0],
      \ s:br_blue[0],
      \ s:br_magenta[0],
      \ s:br_cyan[0],
      \ s:fg_1[0]
    \ ]

" Neovim terminal variables are assigned.
let g:terminal_color_0 = s:bg_1[0]
let g:terminal_color_1 = s:red[0]
let g:terminal_color_2 = s:green[0]
let g:terminal_color_3 = s:yellow[0]
let g:terminal_color_4 = s:blue[0]
let g:terminal_color_5 = s:magenta[0]
let g:terminal_color_6 = s:cyan[0]
let g:terminal_color_7 = s:dim_0[0]
let g:terminal_color_8 = s:bg_2[0]
let g:terminal_color_9 = s:br_red[0]
let g:terminal_color_10 = s:br_green[0]
let g:terminal_color_11 = s:br_yellow[0]
let g:terminal_color_12 = s:br_blue[0]
let g:terminal_color_13 = s:br_magenta[0]
let g:terminal_color_14 = s:br_cyan[0]
let g:terminal_color_15 = s:fg_1[0]

" Enfocado configuration variables are initialized.
let g:enfocado_style = get(g:, 'enfocado_style', 'nature')
let g:enfocado_plugins = get(g:, 'enfocado_plugins', ['all'])

" A function is created to check on-demand plugins.
function s:Plugin_is_activated(name, only_nvim)
  if (g:enfocado_plugins == ['none']) || (a:only_nvim && !has('nvim'))
    return 0
  elseif (a:only_nvim && has('nvim')) || !a:only_nvim
    if g:enfocado_plugins == ['all']
      return 1
    else
      return index(g:enfocado_plugins, a:name) >= 0 ? 1 : 0
    endif
  endif
endfunction

" A function is created to highlight the groups.
function s:Highlighter(group, attr, bg, fg, sp)
  execute 'highlight! '.a:group.
        \ ' term='.a:attr[1].
        \ ' cterm='.a:attr[1].
        \ ' ctermfg='.a:fg[1].
        \ ' ctermbg='.a:bg[1].
        \ ' gui='.a:attr[0].
        \ ' guifg='.a:fg[0].
        \ ' guibg='.a:bg[0].
        \ ' guisp='.a:sp[0]
endfunction
" ------------------------------------------------------------------------------
" SECTION: Neo(Vim) base groups highlighting.
" ------------------------------------------------------------------------------
" Enfocado style diffs.
if g:enfocado_style == 'neon'
  " Neon interfaz.
  call s:Highlighter('Accent', s:none, s:none, s:br_magenta, s:none)
  call s:Highlighter('FloatBorder', s:none, s:bg_1, s:magenta, s:none)
  call s:Highlighter('IncSearch', s:bold, s:bg_2, s:br_magenta, s:none)
  call s:Highlighter('Search', s:bold, s:bg_2, s:br_magenta, s:none)
  call s:Highlighter('ToolbarButton', s:none, s:magenta, s:bg_1, s:none)
  call s:Highlighter('WildMenu', s:bold, s:bg_2, s:br_magenta, s:none)

  " Neon syntax.
  call s:Highlighter('Function', s:italic, s:none, s:br_magenta, s:none)
  call s:Highlighter('FunctionBuiltin', s:italic, s:none, s:br_green, s:none)
  call s:Highlighter('Identifier', s:none, s:none, s:magenta, s:none)
  call s:Highlighter('IdentifierBuiltin', s:none, s:none, s:green, s:none)
  call s:Highlighter('PreProc', s:none, s:none, s:br_violet, s:none)
  call s:Highlighter('Special', s:none, s:none, s:br_blue, s:none)
  call s:Highlighter('Statement', s:none, s:none, s:br_violet, s:none)
  call s:Highlighter('StatementBuiltin', s:none, s:none, s:br_blue, s:none)
  call s:Highlighter('Struct', s:bold_italic, s:none, s:br_magenta, s:none)
  call s:Highlighter('Type', s:none, s:none, s:violet, s:none)
  call s:Highlighter('TypeBuiltin', s:none, s:none, s:blue, s:none)
else
  " Nature interfaz.
  call s:Highlighter('Accent', s:none, s:none, s:br_green, s:none)
  call s:Highlighter('FloatBorder', s:none, s:bg_1, s:green, s:none)
  call s:Highlighter('IncSearch', s:bold, s:bg_2, s:br_green, s:none)
  call s:Highlighter('Search', s:bold, s:bg_2, s:br_green, s:none)
  call s:Highlighter('ToolbarButton', s:none, s:green, s:bg_1, s:none)
  call s:Highlighter('WildMenu', s:bold, s:bg_2, s:br_green, s:none)

  " Nature syntax.
  call s:Highlighter('Function', s:italic, s:none, s:br_green, s:none)
  call s:Highlighter('FunctionBuiltin', s:italic, s:none, s:br_magenta, s:none)
  call s:Highlighter('Identifier', s:none, s:none, s:green, s:none)
  call s:Highlighter('IdentifierBuiltin', s:none, s:none, s:magenta, s:none)
  call s:Highlighter('PreProc', s:none, s:none, s:br_blue, s:none)
  call s:Highlighter('Special', s:none, s:none, s:br_violet, s:none)
  call s:Highlighter('Statement', s:none, s:none, s:br_blue, s:none)
  call s:Highlighter('StatementBuiltin', s:none, s:none, s:br_violet, s:none)
  call s:Highlighter('Struct', s:bold_italic, s:none, s:br_green, s:none)
  call s:Highlighter('Type', s:none, s:none, s:blue, s:none)
  call s:Highlighter('TypeBuiltin', s:none, s:none, s:violet, s:none)
endif

" General interfaz.
call s:Highlighter('ColorColumn', s:none, s:bg_1, s:none, s:none)
call s:Highlighter('Conceal', s:none, s:none, s:bg_2, s:none)
call s:Highlighter('Cursor', s:none, s:fg_0, s:bg_1, s:none)
call s:Highlighter('CursorColumn', s:none, s:bg_1, s:none, s:none)
call s:Highlighter('CursorLine', s:none, s:bg_1, s:none, s:none)
call s:Highlighter('CursorLineNr', s:none, s:none, s:dim_0, s:none)
call s:Highlighter('DiffAdd', s:none, s:none, s:green, s:none)
call s:Highlighter('DiffChange', s:none, s:none, s:yellow, s:none)
call s:Highlighter('DiffDelete', s:none, s:none, s:red, s:none)
call s:Highlighter('DiffText', s:none, s:bg_2, s:yellow, s:none)
call s:Highlighter('Dimmed', s:none, s:none, s:dim_0, s:none)
call s:Highlighter('Directory', s:none, s:none, s:dim_0, s:none)
call s:Highlighter('ErrorMsg', s:none, s:none, s:br_red, s:none)
call s:Highlighter('Folded', s:none, s:none, s:dim_0, s:none)
call s:Highlighter('FoldColumn', s:none, s:none, s:dim_0, s:none)
call s:Highlighter('Ignore', s:none, s:none, s:bg_2, s:none)
call s:Highlighter('lCursor', s:none, s:fg_0, s:bg_1, s:none)
call s:Highlighter('LineNr', s:none, s:none, s:bg_2, s:none)
call s:Highlighter('MatchParen', s:none, s:bg_2, s:none, s:none)
call s:Highlighter('ModeMsg', s:none, s:none, s:dim_0, s:none)
call s:Highlighter('MoreMsg', s:none, s:none, s:br_yellow, s:none)
call s:Highlighter('None', s:none, s:none, s:none, s:none)
call s:Highlighter('NonText', s:none, s:none, s:bg_2, s:none)
call s:Highlighter('Normal', s:none, s:bg_0, s:fg_0, s:none)
call s:Highlighter('NormalFloat', s:none, s:bg_1, s:fg_0, s:none)
call s:Highlighter('NormalNC', s:none, s:bg_0, s:fg_0, s:none)
call s:Highlighter('NvimInternalError', s:none, s:none, s:br_red, s:none)
call s:Highlighter('Pmenu', s:none, s:bg_1, s:fg_0, s:none)
call s:Highlighter('PmenuSbar', s:none, s:bg_1, s:none, s:none)
call s:Highlighter('PmenuSel', s:none, s:bg_2, s:none, s:none)
call s:Highlighter('PmenuThumb', s:none, s:bg_2, s:none, s:none)
call s:Highlighter('Question', s:none, s:none, s:br_yellow, s:none)
call s:Highlighter('RedrawDebugClear', s:none, s:none, s:br_yellow, s:none)
call s:Highlighter('RedrawDebugComposed', s:none, s:none, s:br_green, s:none)
call s:Highlighter('RedrawDebugNormal', s:none, s:none, s:fg_1, s:none)
call s:Highlighter('RedrawDebugRecompose', s:none, s:none, s:br_red, s:none)
call s:Highlighter('SignColumn', s:none, s:none, s:none, s:none)
call s:Highlighter('SpecialKey', s:none, s:none, s:bg_2, s:none)
call s:Highlighter('SpellBad', s:undercurl, s:none, s:none, s:red)
call s:Highlighter('SpellCap', s:undercurl, s:none, s:none, s:blue)
call s:Highlighter('SpellLocal', s:undercurl, s:none, s:none, s:cyan)
call s:Highlighter('SpellRare', s:undercurl, s:none, s:none, s:magenta)
call s:Highlighter('StatusLine', s:none, s:bg_1, s:dim_0, s:none)
call s:Highlighter('StatusLineNC', s:none, s:bg_1, s:bg_2, s:none)
call s:Highlighter('StatuslineTerm', s:none, s:bg_1, s:dim_0, s:none)
call s:Highlighter('StatuslineTermNC', s:none, s:bg_1, s:bg_2, s:none)
call s:Highlighter('Success', s:none, s:none, s:br_green, s:none)
call s:Highlighter('TabLine', s:none, s:bg_1, s:bg_2, s:none)
call s:Highlighter('TabLineFill', s:none, s:bg_1, s:bg_2, s:none)
call s:Highlighter('TabLineSel', s:none, s:none, s:dim_0, s:none)
call s:Highlighter('TermCursor', s:none, s:fg_0, s:bg_1, s:none)
call s:Highlighter('Title', s:bold, s:none, s:fg_1, s:none)
call s:Highlighter('ToolbarLine', s:none, s:bg_1, s:dim_0, s:none)
call s:Highlighter('VertSplit', s:none, s:none, s:base, s:none)
call s:Highlighter('Visual', s:none, s:bg_2, s:none, s:none)
call s:Highlighter('VisualNC', s:none, s:bg_2, s:none, s:none)
call s:Highlighter('VisualNOS', s:none, s:bg_2, s:none, s:none)
call s:Highlighter('WarningMsg', s:none, s:none, s:br_orange, s:none)
highlight! link EndOfBuffer NonText
highlight! link Line ColorColumn
highlight! link LineNrAbove LineNr
highlight! link LineNrBelow LineNr
highlight! link MsgArea Dimmed
highlight! link MsgSeparator StatusLineNC
highlight! link QuickFixLine Search
highlight! link Substitute Search
highlight! link TermCursorNC None
highlight! link Whitespace NonText
if has('nvim')
  highlight! FloatShadow ctermbg=16 guibg=#000000 blend=60
  highlight! FloatShadowThrough ctermbg=16 guibg=#000000 blend=100
endif

" General syntax.
call s:Highlighter('Comment', s:italic, s:none, s:dim_0, s:none)
call s:Highlighter('Constant', s:none, s:none, s:cyan, s:none)
call s:Highlighter('Error', s:none, s:none, s:br_red, s:none)
call s:Highlighter('Link', s:underline, s:none, s:br_cyan, s:br_cyan)
call s:Highlighter('Text', s:none, s:none, s:fg_0, s:none)
call s:Highlighter('Todo', s:bold, s:br_cyan, s:bg_1, s:none)
highlight! link Boolean TypeBuiltin
highlight! link Character Constant
highlight! link Conditional Statement
highlight! link Debug Constant
highlight! link Define Type
highlight! link Delimiter Text
highlight! link Exception Statement
highlight! link Float Number
highlight! link Include Type
highlight! link Keyword Statement
highlight! link Label Type
highlight! link Macro Type
highlight! link Method Function
highlight! link Number Constant
highlight! link Operator Statement
highlight! link PreCondit Statement
highlight! link Repeat Statement
highlight! link SpecialChar StatementBuiltin
highlight! link SpecialComment StatementBuiltin
highlight! link StorageClass Type
highlight! link String Constant
highlight! link Structure Type
highlight! link Tag Statement
highlight! link Typedef Type
highlight! Underlined term=underline cterm=underline gui=underline

" Neovim diagnostic.
call s:Highlighter('DiagnosticError', s:none, s:none, s:br_red, s:none)
call s:Highlighter('DiagnosticHint', s:none, s:none, s:br_blue, s:none)
call s:Highlighter('DiagnosticInfo', s:none, s:none, s:br_yellow, s:none)
call s:Highlighter('DiagnosticWarn', s:none, s:none, s:br_orange, s:none)
call s:Highlighter('DiagnosticFloatingError', s:none, s:bg_1, s:br_red, s:none)
call s:Highlighter('DiagnosticFloatingHint', s:none, s:bg_1, s:br_blue, s:none)
call s:Highlighter('DiagnosticFloatingInfo', s:none, s:bg_1, s:br_yellow, s:none)
call s:Highlighter('DiagnosticFloatingWarn', s:none, s:bg_1, s:br_orange, s:none)
call s:Highlighter('DiagnosticUnderlineError', s:underline, s:none, s:br_red, s:br_red)
call s:Highlighter('DiagnosticUnderlineHint', s:underline, s:none, s:br_blue, s:br_blue)
call s:Highlighter('DiagnosticUnderlineInfo', s:underline, s:none, s:br_yellow, s:br_yellow)
call s:Highlighter('DiagnosticUnderlineWarn', s:underline, s:none, s:br_orange, s:br_orange)
highlight! link DiagnosticSignError DiagnosticError
highlight! link DiagnosticSignHint DiagnosticHint
highlight! link DiagnosticSignInfo DiagnosticInfo
highlight! link DiagnosticSignWarn DiagnosticWarn
highlight! link DiagnosticVirtualTextError DiagnosticFloatingError
highlight! link DiagnosticVirtualTextHint DiagnosticFloatingHint
highlight! link DiagnosticVirtualTextInfo DiagnosticFloatingInfo
highlight! link DiagnosticVirtualTextWarn DiagnosticFloatingWarn
" ------------------------------------------------------------------------------
" SECTION: Filetypes syntax groups highlighting.
" ------------------------------------------------------------------------------
" Diff.
highlight! link diffAdded DiffAdd
highlight! link diffBDiffer Text
highlight! link diffChanged DiffChange
highlight! link diffComment Comment
highlight! link diffCommon Text
highlight! link diffDiffer Text
highlight! link diffFile Text
highlight! link diffIdentical Text
highlight! link diffIndexLine Text
highlight! link diffIsA Text
highlight! link diffLine Title
highlight! link diffNewFile Text
highlight! link diffNoEOL Text
highlight! link diffOldFile Text
highlight! link diffOnly Text
highlight! link diffRemoved DiffDelete
highlight! link diffSubname Title
" ------------------------------------------------------------------------------
" SECTION: Plugins for Neo(Vim) groups highlighting.
" ------------------------------------------------------------------------------
" ale: {{{
  if s:Plugin_is_activated('ale', 0)
    highlight! link ALEError DiagnosticUnderlineError
    highlight! link ALEInfo DiagnosticUnderlineInfo
    highlight! link ALEWarning DiagnosticUnderlineWarn
    highlight! link ALEErrorSign DiagnosticSignError
    highlight! link ALEInfoSign DiagnosticSignInfo
    highlight! link ALEWarningSign DiagnosticSignWarn
    highlight! link ALEErrorLine None
    highlight! link ALEInfoLine None
    highlight! link ALEWarningLine None
    highlight! link ALEVirtualTextError DiagnosticVirtualTextError
    highlight! link ALEVirtualTextInfo DiagnosticVirtualTextInfo
    highlight! link ALEVirtualTextWarning DiagnosticVirtualTextWarn
    highlight! link ALEStyleError ALEError
    highlight! link ALEStyleWarning ALEWarning
    highlight! link ALEStyleErrorSign ALEErrorSign
    highlight! link ALEStyleWarningSign ALEWarningSign
    highlight! link ALEVirtualTextStyleError ALEVirtualTextError
    highlight! link ALEVirtualTextStyleWarning ALEVirtualTextWarning
    highlight! link ALESignColumnWithErrors ALEErrorSign
  endif
" }}}
" coc.nvim: {{{
  if s:Plugin_is_activated('coc', 0)
    " Coc markdown.
    highlight! link CocMarkdownHeader Title
    highlight! link CocMarkdownLink Link
    highlight! CocBold term=bold cterm=bold gui=bold
    highlight! CocItalic term=italic cterm=italic gui=italic
    highlight! CocStrikeThrough term=strikethrough cterm=strikethrough gui=strikethrough
    highlight! CocUnderline term=underline cterm=underline gui=underline

    " Coc diagnostics.
    highlight! link CocErrorHighlight DiagnosticUnderlineError
    highlight! link CocHintHighlight DiagnosticUnderlineHint
    highlight! link CocInfoHighlight DiagnosticUnderlineInfo
    highlight! link CocWarningHighlight DiagnosticUnderlineWarn
    highlight! link CocErrorSign DiagnosticError
    highlight! link CocHintSign DiagnosticHint
    highlight! link CocInfoSign DiagnosticInfo
    highlight! link CocWarningSign DiagnosticWarn
    highlight! link CocErrorVirtualText DiagnosticVirtualTextError
    highlight! link CocHintVirtualText DiagnosticVirtualTextHint
    highlight! link CocInfoVirtualText DiagnosticVirtualTextInfo
    highlight! link CocWarningVirtualText DiagnosticVirtualTextWarn
    highlight! link CocErrorLine None
    highlight! link CocHintLine None
    highlight! link CocInfoLine None
    highlight! link CocWarningLine None
    highlight! link CocDeprecatedHighlight Error
    highlight! link CocFadeOut Comment
    highlight! link CocUnusedHighlight Comment

    " Coc document highlight.
    highlight! link CocHighlightRead Visual
    highlight! link CocHighlightWrite Visual
    highlight! link CocHighlightText Visual

    " Coc float window/popup.
    highlight! link CocFloating NormalFloat
    highlight! link CocErrorFloat DiagnosticFloatingError
    highlight! link CocHintFloat DiagnosticFloatingHint
    highlight! link CocInfoFloat DiagnosticFloatingInfo
    highlight! link CocWarningFloat DiagnosticFloatingWarn

    " Coc list.
    highlight! link CocListMode StatusLine
    highlight! link CocListPath StatusLine
    highlight! link CocSelectedLine Visual
    highlight! link CocSelectedText Visual

    " Coc tree view.
    highlight! link CocTreeDescription Dimmed
    highlight! link CocTreeOpenClose Dimmed
    highlight! link CocTreeSelected Visual
    highlight! link CocTreeTitle Title

    " Coc symbol icons.
    highlight! link CocSymbolArray Identifier
    highlight! link CocSymbolBoolean Boolean
    highlight! link CocSymbolClass Struct
    highlight! link CocSymbolConstant Constant
    highlight! link CocSymbolConstructor Struct
    highlight! link CocSymbolDefault Text
    highlight! link CocSymbolEnum Struct
    highlight! link CocSymbolEnumMember Identifier
    highlight! link CocSymbolEvent Function
    highlight! link CocSymbolField Identifier
    highlight! link CocSymbolFile Text
    highlight! link CocSymbolFunction Function
    highlight! link CocSymbolInterface Struct
    highlight! link CocSymbolKey Identifier
    highlight! link CocSymbolMethod Method
    highlight! link CocSymbolModule Identifier
    highlight! link CocSymbolNamespace Struct
    highlight! link CocSymbolNull TypeBuiltin
    highlight! link CocSymbolNumber Number
    highlight! link CocSymbolObject Identifier
    highlight! link CocSymbolOperator Operator
    highlight! link CocSymbolPackage Identifier
    highlight! link CocSymbolProperty Identifier
    highlight! link CocSymbolString String
    highlight! link CocSymbolStruct Struct
    highlight! link CocSymbolTypeParameter Identifier
    highlight! link CocSymbolVariable Identifier

    " Coc others.
    highlight! link CocCodeLens Dimmed
    highlight! link CocCursorRange Visual
    highlight! link CocHoverRange Visual
    highlight! link CocMenuSel Visual
    highlight! link CocSelectedRange Visual

    " Coc semantic highlight.
    if exists('g:coc_default_semantic_highlight_groups') &&
          \ g:coc_default_semantic_highlight_groups == 1
      highlight! link CocSem_class Struct
      highlight! link CocSem_comment Comment
      highlight! link CocSem_enum Struct
      highlight! link CocSem_enumMember Identifier
      highlight! link CocSem_event Function
      highlight! link CocSem_function Function
      highlight! link CocSem_interface Struct
      highlight! link CocSem_keyword Keyword
      highlight! link CocSem_macro Macro
      highlight! link CocSem_method Method
      highlight! link CocSem_modifier Struct
      highlight! link CocSem_namespace Struct
      highlight! link CocSem_number Number
      highlight! link CocSem_operator Operator
      highlight! link CocSem_parameter Identifier
      highlight! link CocSem_property Identifier
      highlight! link CocSem_regexp TypeBuiltin
      highlight! link CocSem_string String
      highlight! link CocSem_struct Struct
      highlight! link CocSem_type Type
      highlight! link CocSem_typeParameter Identifier
      highlight! link CocSem_variable Identifier
    endif
  endif
" }}}
" copilot.vim: {{{
  if s:Plugin_is_activated('copilot', 1)
    call s:Highlighter('CopilotSuggestion', s:none, s:bg_0, s:dim_0, s:none)
  endif
" }}}
" dashboard-nvim: {{{
  if s:Plugin_is_activated('dashboard', 0)
    highlight! link DashboardHeader Accent
    highlight! link DashboardCenter Text
    highlight! link DashboardShortCut Text
    highlight! link DashboardFooter Dimmed
  endif
" }}}
" fzf.vim: {{{
  if s:Plugin_is_activated('fzf', 0)
    " fzf apply enfocado groups.
    if !exists('g:fzf_colors')
      let g:fzf_colors = {
            \ 'bg': ['bg', 'NormalFloat'],
            \ 'bg+': ['bg', 'Search'],
            \ 'border': ['fg', 'FloatBorder'],
            \ 'fg': ['fg', 'NormalFloat'],
            \ 'fg+': ['fg', 'NormalFloat'],
            \ 'header': ['fg', 'Title'],
            \ 'hl': ['fg', 'Accent'],
            \ 'hl+': ['fg', 'Search'],
            \ 'info': ['fg', 'DiagnosticInfo'],
            \ 'marker': ['fg', 'NormalFloat'],
            \ 'pointer': ['fg', 'NormalFloat'],
            \ 'prompt': ['fg', 'Dimmed'],
            \ 'spinner': ['fg', 'DiagnosticInfo']
          \ }
    endif

    " Others FZF groups.
    call s:Highlighter('Fzf1', s:bold, s:bg_2, s:dim_0, s:none)
    call s:Highlighter('Fzf2', s:none, s:bg_1, s:dim_0, s:none)
    call s:Highlighter('Fzf3', s:none, s:bg_0, s:dim_0, s:none)
  endif
" }}}
" nerdtree: {{{
  if s:Plugin_is_activated('nerdtree', 0)
    call s:Highlighter('NERDTreeFile', s:none, s:none, s:dim_0, s:none)
    highlight! link NERDTreeBookmark Dimmed
    highlight! link NERDTreeBookmarkHeader Title
    highlight! link NERDTreeClosable Dimmed
    highlight! link NERDTreeCWD Ignore
    highlight! link NERDTreeDir Dimmed
    highlight! link NERDTreeDirSlash Dimmed
    highlight! link NERDTreeExecFile Dimmed
    highlight! link NERDTreeHelp Text
    highlight! link NERDTreeHelpCommand Text
    highlight! link NERDTreeHelpKey Text
    highlight! link NERDTreeHelpTitle Title
    highlight! link NERDTreeLink Dimmed
    highlight! link NERDTreeLinkDir Dimmed
    highlight! link NERDTreeLinkFile Dimmed
    highlight! link NERDTreeLinkTarget Ignore
    highlight! link NERDTreeOpenable Dimmed
    highlight! link NERDTreeRO Dimmed
    highlight! link NERDTreeToggleOff Dimmed
    highlight! link NERDTreeToggleOn Text
    highlight! link NERDTreeUp Dimmed
  endif
" }}}
" netrw: {{{
  if s:Plugin_is_activated('netrw', 0)
    highlight! link netrwClassify Dimmed
    highlight! link netrwCmdSep Ignore
    highlight! link netrwComment Comment
    highlight! link netrwDir Dimmed
    highlight! link netrwExe Dimmed
    highlight! link netrwHelpCmd Text
    highlight! link netrwLink Dimmed
    highlight! link netrwList Dimmed
    highlight! link netrwPlain Dimmed
    highlight! link netrwSymLink Dimmed
    highlight! link netrwVersion Ignore
  endif
" }}}
" nvim-cmp: {{{
  if s:Plugin_is_activated('cmp', 1)
    highlight! link CmpItemAbbrDefault Text
    highlight! link CmpItemAbbrDeprecatedDefault Error
    highlight! link CmpItemAbbrMatchDefault Accent
    highlight! link CmpItemAbbrMatchFuzzyDefault Accent
    highlight! link CmpItemKindClassDefault Struct
    highlight! link CmpItemKindColorDefault Constant
    highlight! link CmpItemKindConstantDefault Constant
    highlight! link CmpItemKindConstructorDefault Struct
    highlight! link CmpItemKindDefault Text
    highlight! link CmpItemKindEnumDefault Struct
    highlight! link CmpItemKindEnumMemberDefault Identifier
    highlight! link CmpItemKindEventDefault Function
    highlight! link CmpItemKindFieldDefault Identifier
    highlight! link CmpItemKindFileDefault Text
    highlight! link CmpItemKindFolderDefault Text
    highlight! link CmpItemKindFunctionDefault Function
    highlight! link CmpItemKindInterfaceDefault Struct
    highlight! link CmpItemKindKeywordDefault Keyword
    highlight! link CmpItemKindMethodDefault Method
    highlight! link CmpItemKindModuleDefault Identifier
    highlight! link CmpItemKindOperatorDefault Operator
    highlight! link CmpItemKindPropertyDefault Identifier
    highlight! link CmpItemKindReferenceDefault Accent
    highlight! link CmpItemKindSnippetDefault Text
    highlight! link CmpItemKindStructDefault Struct
    highlight! link CmpItemKindTextDefault Text
    highlight! link CmpItemKindTypeParameterDefault Identifier
    highlight! link CmpItemKindUnitDefault Constant
    highlight! link CmpItemKindValueDefault Constant
    highlight! link CmpItemKindVariableDefault Identifier
    highlight! link CmpItemMenuDefault NormalFloat
  endif
" }}}
" nvim-lspconfig: {{{
  if s:Plugin_is_activated('lsp', 1)
    highlight! link LspCodeLens Dimmed
    highlight! link LspCodeLensSeparator NonText
    highlight! link LspReferenceRead Visual
    highlight! link LspReferenceText Visual
    highlight! link LspReferenceWrite Visual
    highlight! link LspSignatureActiveParameter Accent
  endif
" }}}
" nvim-lsp-installer: {{{
  if s:Plugin_is_activated('lsp-installer', 1)
    highlight! link LspInstallerHeader Title
    highlight! link LspInstallerServerExpanded Text
    highlight! link LspInstallerHeading Title
    highlight! link LspInstallerGreen Success
    highlight! link LspInstallerVaderSaber Text
    highlight! link LspInstallerOrange DiagnosticWarn
    highlight! link LspInstallerMuted Ignore
    highlight! link LspInstallerLabel Text
    highlight! link LspInstallerError DiagnosticError
    highlight! link LspInstallerHighlighted Search
    highlight! link LspInstallerLink Link
  endif
" }}}
" nvim-notify: {{{
  if s:Plugin_is_activated('notify', 1)
    call s:Highlighter('NotifyERRORBorder', s:none, s:none, s:br_red, s:none)
    call s:Highlighter('NotifyDEBUGBorder', s:none, s:none, s:dim_0, s:none)
    call s:Highlighter('NotifyINFOBorder', s:none, s:none, s:br_yellow, s:none)
    call s:Highlighter('NotifyTRACEBorder', s:none, s:none, s:br_magenta, s:none)
    call s:Highlighter('NotifyWARNBorder', s:none, s:none, s:br_orange, s:none)
    highlight! link NotifyERRORIcon NotifyERRORBorder
    highlight! link NotifyDEBUGIcon NotifyDEBUGBorder
    highlight! link NotifyINFOIcon NotifyINFOBorder
    highlight! link NotifyTRACEIcon NotifyTRACEBorder
    highlight! link NotifyWARNIcon NotifyWARNBorder
    highlight! link NotifyERRORTitle Title
    highlight! link NotifyDEBUGTitle Title
    highlight! link NotifyINFOTitle Title
    highlight! link NotifyTRACETitle Title
    highlight! link NotifyWARNTitle Title
    highlight! link NotifyERRORBody Text
    highlight! link NotifyDEBUGBody Text
    highlight! link NotifyINFOBody Text
    highlight! link NotifyTRACEBody Text
    highlight! link NotifyWARNBody Text
    highlight! link NotifyLogTime Debug
    highlight! link NotifyLogTitle Title
  endif
" }}}
" nvim-scrollview: {{{
  if s:Plugin_is_activated('scrollview', 1)
    highlight! link ScrollView Line
  endif
" }}}
" nvim-treesitter: {{{
  if s:Plugin_is_activated('treesitter', 1)
    call s:Highlighter('TSLiteral', s:italic, s:none, s:fg_0, s:none)
    call s:Highlighter('TSNote', s:bold, s:br_green, s:bg_1, s:none)
    call s:Highlighter('TSTitle', s:bold_italic, s:none, s:fg_1, s:none)
    highlight! link TSAnnotation Dimmed
    highlight! link TSAttribute Identifier
    highlight! link TSBoolean Boolean
    highlight! link TSCharacter Character
    highlight! link TSComment Comment
    highlight! link TSConditional Conditional
    highlight! link TSConstant Constant
    highlight! link TSConstBuiltin TypeBuiltin
    highlight! link TSConstMacro Type
    highlight! link TSConstructor Struct
    highlight! link TSCurrentScope Visual
    highlight! link TSDanger DiagnosticError
    highlight! link TSDefinition Identifier
    highlight! link TSDefinitionUsage Accent
    highlight! link TSEnvironment Type
    highlight! link TSEnvironmentName Identifier
    highlight! link TSException Statement
    highlight! link TSField Identifier
    highlight! link TSFloat Float
    highlight! link TSFunction Function
    highlight! link TSFuncBuiltin FunctionBuiltin
    highlight! link TSFuncMacro Function
    highlight! link TSInclude Include
    highlight! link TSKeyword Keyword
    highlight! link TSKeywordFunction Type
    highlight! link TSKeywordOperator Operator
    highlight! link TSKeywordReturn Statement
    highlight! link TSLabel Label
    highlight! link TSMath FunctionBuiltin
    highlight! link TSMethod Method
    highlight! link TSNamespace Struct
    highlight! link TSNone None
    highlight! link TSNumber Number
    highlight! link TSOperator Operator
    highlight! link TSParameter Identifier
    highlight! link TSParameterReference Accent
    highlight! link TSProperty Identifier
    highlight! link TSPunctDelimiter Delimiter
    highlight! link TSPunctBracket Delimiter
    highlight! link TSPunctSpecial TypeBuiltin
    highlight! link TSRepeat Repeat
    highlight! link TSString String
    highlight! link TSStringRegex TypeBuiltin
    highlight! link TSStringEscape TypeBuiltin
    highlight! link TSStringSpecial TypeBuiltin
    highlight! link TSSymbol Type
    highlight! link TSTag Tag
    highlight! link TSTagAttribute Identifier
    highlight! link TSTagDelimiter Type
    highlight! link TSText Text
    highlight! link TSTextReference Accent
    highlight! link TSType Type
    highlight! link TSTypeBuiltin Type
    highlight! link TSURI Link
    highlight! link TSVariable Identifier
    highlight! link TSVariableBuiltin IdentifierBuiltin
    highlight! link TSWarning DiagnosticWarn
    highlight! TSEmphasis term=italic cterm=italic gui=italic
    highlight! TSStrike term=strikethrough cterm=strikethrough gui=strikethrough
    highlight! TSStrong term=bold cterm=bold gui=bold
    highlight! TSUnderline term=underline cterm=underline gui=underline

    " nvim-ts-rainbow module.
    if g:enfocado_style == 'neon'
      call s:Highlighter('rainbowcol1', s:none, s:none, s:violet, s:none)
      call s:Highlighter('rainbowcol2', s:none, s:none, s:cyan, s:none)
      call s:Highlighter('rainbowcol3', s:none, s:none, s:magenta, s:none)
      call s:Highlighter('rainbowcol4', s:none, s:none, s:br_violet, s:none)
      call s:Highlighter('rainbowcol5', s:none, s:none, s:br_cyan, s:none)
      call s:Highlighter('rainbowcol6', s:none, s:none, s:br_magenta, s:none)
      call s:Highlighter('rainbowcol7', s:none, s:none, s:violet, s:none)
    else
      call s:Highlighter('rainbowcol1', s:none, s:none, s:blue, s:none)
      call s:Highlighter('rainbowcol2', s:none, s:none, s:cyan, s:none)
      call s:Highlighter('rainbowcol3', s:none, s:none, s:green, s:none)
      call s:Highlighter('rainbowcol4', s:none, s:none, s:br_blue, s:none)
      call s:Highlighter('rainbowcol5', s:none, s:none, s:br_cyan, s:none)
      call s:Highlighter('rainbowcol6', s:none, s:none, s:br_green, s:none)
      call s:Highlighter('rainbowcol7', s:none, s:none, s:blue, s:none)
    endif
  endif
" }}}
" nvim-tree.lua: {{{
  if s:Plugin_is_activated('tree', 1)
    call s:Highlighter('NvimTreeNormal', s:none, s:bg_0, s:dim_0, s:none)
    call s:Highlighter('NvimTreeNormalNC', s:none, s:bg_0, s:dim_0, s:none)
    highlight! link NvimTreeCursorColumn Line
    highlight! link NvimTreeCursorLine Line
    highlight! link NvimTreeEmptyFolderName Dimmed
    highlight! link NvimTreeEndOfBuffer EndOfBuffer
    highlight! link NvimTreeExecFile Dimmed
    highlight! link NvimTreeFileDeleted DiffDelete
    highlight! link NvimTreeFileDirty DiffDelete
    highlight! link NvimTreeFileMerge DiffChange
    highlight! link NvimTreeFileNew DiffAdd
    highlight! link NvimTreeFileRenamed DiffAdd
    highlight! link NvimTreeFileStaged DiffChange
    highlight! link NvimTreeFolderIcon Dimmed
    highlight! link NvimTreeFolderName Dimmed
    highlight! link NvimTreeGitDeleted DiffDelete
    highlight! link NvimTreeGitDirty DiffDelete
    highlight! link NvimTreeGitIgnored Ignore
    highlight! link NvimTreeGitMerge DiffChange
    highlight! link NvimTreeGitNew DiffAdd
    highlight! link NvimTreeGitRenamed DiffAdd
    highlight! link NvimTreeGitStaged DiffChange
    highlight! link NvimTreeImageFile Dimmed
    highlight! link NvimTreeIndentMarker NonText
    highlight! link NvimTreeLspDiagnosticsError DiagnosticError
    highlight! link NvimTreeLspDiagnosticsHint DiagnosticHint
    highlight! link NvimTreeLspDiagnosticsInformation DiagnosticInfo
    highlight! link NvimTreeLspDiagnosticsWarning DiagnosticWarn
    highlight! link NvimTreeOpenedFile Dimmed
    highlight! link NvimTreeOpenedFolderName Dimmed
    highlight! link NvimTreePopup NormalFloat
    highlight! link NvimTreeRootFolder Ignore
    highlight! link NvimTreeSignColumn SignColumn
    highlight! link NvimTreeSpecialFile Dimmed
    highlight! link NvimTreeStatusLine StatusLine
    highlight! link NvimTreeStatusLineNC StatusLineNC
    highlight! link NvimTreeSymlink Dimmed
    highlight! link NvimTreeVertSplit VertSplit
    highlight! link NvimTreeWindowPicker Accent
  endif
" }}}
" packer.nvim: {{{
  if s:Plugin_is_activated('packer', 1)
    highlight! link packerWorking Accent
    highlight! link packerSuccess Success
    highlight! link packerFail DiagnosticError
    highlight! link packerStatus DiagnosticInfo
    highlight! link packerStatusSuccess Success
    highlight! link packerStatusFail DiagnosticError
    highlight! link packerStatusCommit Dimmed
    highlight! link packerHash Dimmed
    highlight! link packerRelDate Dimmed
    highlight! link packerProgress DiagnosticInfo
    highlight! link packerOutput Debug
    highlight! link packerTimeHigh Dimmed
    highlight! link packerTimeMedium Dimmed
    highlight! link packerTimeLow Dimmed
    highlight! link packerTimeTrivial Dimmed
    highlight! link packerPackageNotLoaded Dimmed
    highlight! link packerPackageName Text
    highlight! link packerString String
    highlight! link packerBool Boolean
    highlight! link packerBreakingChange DiagnosticWarn
  endif
" }}}
" rainbow: {{{
  if s:Plugin_is_activated('rainbow', 0)
    if g:enfocado_style == 'neon'
      let s:rainbow_guifgs = [s:violet[0], s:cyan[0], s:magenta[0], s:br_violet[0]]
      let s:rainbow_ctermfgs = [s:violet[1], s:cyan[1], s:magenta[1], s:br_violet[1]]
    else
      let s:rainbow_guifgs = [s:blue[0], s:cyan[0], s:green[0], s:br_blue[0]]
      let s:rainbow_ctermfgs = [s:blue[1], s:cyan[1], s:green[1], s:br_blue[1]]
    endif

    if !exists('g:rainbow_conf')
      let g:rainbow_conf = {}
    endif

    if !has_key(g:rainbow_conf, 'guifgs')
      let g:rainbow_conf['guifgs'] = s:rainbow_guifgs
    endif

    if !has_key(g:rainbow_conf, 'ctermfgs')
      let g:rainbow_conf['ctermfgs'] = s:rainbow_ctermfgs
    endif
  endif
" }}}
" telescope.nvim: {{{
  if s:Plugin_is_activated('telescope', 1)
    call s:Highlighter('TelescopePreviewDate', s:none, s:none, s:blue, s:none)
    call s:Highlighter('TelescopePreviewDirectory', s:bold, s:none, s:br_blue, s:none)
    call s:Highlighter('TelescopePreviewExecute', s:none, s:none, s:green, s:none)
    call s:Highlighter('TelescopePreviewLink', s:none, s:none, s:magenta, s:none)
    call s:Highlighter('TelescopePreviewRead', s:bold, s:none, s:yellow, s:none)
    call s:Highlighter('TelescopePreviewSize', s:bold, s:none, s:green, s:none)
    call s:Highlighter('TelescopePreviewUser', s:bold, s:none, s:br_yellow, s:none)
    call s:Highlighter('TelescopePreviewWrite', s:bold, s:none, s:red, s:none)
    highlight! link TelescopeBorder FloatBorder
    highlight! link TelescopeMatching Accent
    highlight! link TelescopeMultiSelection Visual
    highlight! link TelescopeNormal NormalFloat
    highlight! link TelescopePreviewBorder FloatBorder
    highlight! link TelescopePreviewMatch Search
    highlight! link TelescopePreviewMessage DiagnosticInfo
    highlight! link TelescopePreviewMessageFillchar DiagnosticInfo
    highlight! link TelescopePreviewNormal NormalFloat
    highlight! link TelescopePreviewTitle Title
    highlight! link TelescopePromptBorder FloatBorder
    highlight! link TelescopePromptCounter DiagnosticInfo
    highlight! link TelescopePromptNormal NormalFloat
    highlight! link TelescopePromptPrefix Text
    highlight! link TelescopePromptTitle Title
    highlight! link TelescopeResultsBorder FloatBorder
    highlight! link TelescopeResultsDiffAdd DiffAdd
    highlight! link TelescopeResultsDiffChange DiffChange
    highlight! link TelescopeResultsDiffDelete DiffDelete
    highlight! link TelescopeResultsDiffUntracked Ignore
    highlight! link TelescopeResultsClass Struct
    highlight! link TelescopeResultsComment Comment
    highlight! link TelescopeResultsConstant Constant
    highlight! link TelescopeResultsField Identifier
    highlight! link TelescopeResultsFunction Function
    highlight! link TelescopeResultsIdentifier Identifier
    highlight! link TelescopeResultsLineNr LineNr
    highlight! link TelescopeResultsMethod Method
    highlight! link TelescopeResultsNormal NormalFloat
    highlight! link TelescopeResultsNumber Number
    highlight! link TelescopeResultsOperator Operator
    highlight! link TelescopeResultsSpecialComment StatementBuiltin
    highlight! link TelescopeResultsStruct Struct
    highlight! link TelescopeResultsTitle Title
    highlight! link TelescopeResultsVariable Identifier
    highlight! link TelescopeSelection Visual
    highlight! link TelescopeSelectionCaret Visual
    highlight! link TelescopeTitle Title
  endif
" }}}
" todo-comments.nvim: {{{
  if s:Plugin_is_activated('todo-comments', 1)
    call s:Highlighter('TodoBgFIX', s:bold, s:br_red, s:bg_1, s:none)
    call s:Highlighter('TodoBgHACK', s:bold, s:br_yellow, s:bg_1, s:none)
    call s:Highlighter('TodoBgNOTE', s:bold, s:br_green, s:bg_1, s:none)
    call s:Highlighter('TodoBgPERF', s:bold, s:br_magenta, s:bg_1, s:none)
    call s:Highlighter('TodoBgTODO', s:bold, s:br_cyan, s:bg_1, s:none)
    call s:Highlighter('TodoBgWARN', s:bold, s:br_orange, s:bg_1, s:none)
    call s:Highlighter('TodoFgFIX', s:none, s:none, s:br_red, s:none)
    call s:Highlighter('TodoFgHACK', s:none, s:none, s:br_yellow, s:none)
    call s:Highlighter('TodoFgNOTE', s:none, s:none, s:br_green, s:none)
    call s:Highlighter('TodoFgPERF', s:none, s:none, s:br_magenta, s:none)
    call s:Highlighter('TodoFgTODO', s:none, s:none, s:br_cyan, s:none)
    call s:Highlighter('TodoFgWARN', s:none, s:none, s:br_orange, s:none)
    call s:Highlighter('TodoSignFIX', s:none, s:none, s:br_red, s:none)
    call s:Highlighter('TodoSignHACK', s:none, s:none, s:br_yellow, s:none)
    call s:Highlighter('TodoSignNOTE', s:none, s:none, s:br_green, s:none)
    call s:Highlighter('TodoSignPERF', s:none, s:none, s:br_magenta, s:none)
    call s:Highlighter('TodoSignTODO', s:none, s:none, s:br_cyan, s:none)
    call s:Highlighter('TodoSignWARN', s:none, s:none, s:br_orange, s:none)
  endif
" }}}
" vim-floaterm: {{{
  if s:Plugin_is_activated('floaterm', 0)
    highlight! link Floaterm NormalFloat
    highlight! link FloatermBorder FloatBorder
    highlight! link FloatermNC NormalFloat
  endif
" }}}
" vim-gitgutter: {{{
  if s:Plugin_is_activated('gitgutter', 0)
    highlight! link GitGutterAdd DiffAdd
    highlight! link GitGutterAddInvisible None
    highlight! link GitGutterAddLine GitGutterAdd
    highlight! link GitGutterAddLineNr GitGutterAdd
    highlight! link GitGutterChange DiffChange
    highlight! link GitGutterChangeInvisible None
    highlight! link GitGutterChangeLine GitGutterChange
    highlight! link GitGutterChangeLineNr GitGutterChange
    highlight! link GitGutterDelete DiffDelete
    highlight! link GitGutterDeleteInvisible None
    highlight! link GitGutterDeleteLine GitGutterDelete
    highlight! link GitGutterDeleteLineNr GitGutterDelete
    highlight! link GitGutterChangeDelete GitGutterChange
    highlight! link GitGutterChangeDeleteInvisible GitGutterChangeInvisible
    highlight! link GitGutterChangeDeleteLine GitGutterChangeDelete
    highlight! link GitGutterChangeDeleteLineNr GitGutterChangeDelete
  endif
" }}}
" vim-highlightedyank: {{{
  if s:Plugin_is_activated('yank', 0)
    highlight! link HighlightedyankRegion Visual
  endif
" }}}
" vim-matchup: {{{
  if s:Plugin_is_activated('matchup', 0)
    highlight! link MatchBackground Visual
    highlight! link MatchParenCur Visual
    highlight! link MatchWord Visual
    highlight! link MatchWordCur Visual
  endif
" }}}
" vim-plug: {{{
  if s:Plugin_is_activated('plug', 0)
    highlight! link plug1 Title
    highlight! link plug2 Accent
    highlight! link plugBracket Text
    highlight! link plugCommit Text
    highlight! link plugDash Dimmed
    highlight! link plugDeleted Ignore
    highlight! link plugEdge Dimmed
    highlight! link plugError DiagnosticError
    highlight! link plugH2 Title
    highlight! link plugInstall Accent
    highlight! link plugMessage DiagnosticInfo
    highlight! link plugName Text
    highlight! link plugNotLoaded Dimmed
    highlight! link plugNumber Number
    highlight! link plugPlus Text
    highlight! link plugRelDate Dimmed
    highlight! link plugSha Dimmed
    highlight! link plugStar Dimmed
    highlight! link plugTag Text
    highlight! link plugUpdate Accent
    highlight! link plugX Text
  endif
" }}}
" vim-signify: {{{
  if s:Plugin_is_activated('signify', 0)
    if exists('g:signify_line_highlight') && g:signify_line_highlight == 1
      highlight! link SignifyLineAdd SignifySignAdd
      highlight! link SignifyLineChange SignifySignChange
      highlight! link SignifyLineChangeDelete SignifyLineChange
      highlight! link SignifyLineDelete SignifySignDelete
      highlight! link SignifyLineDeleteFirstLine SignifyLineDelete
    endif
    highlight! link SignifySignAdd DiffAdd
    highlight! link SignifySignChange DiffChange
    highlight! link SignifySignChangeDelete SignifySignChange
    highlight! link SignifySignDelete DiffDelete
    highlight! link SignifySignDeleteFirstLine SignifySignDelete
  endif
" }}}
" vim-startify: {{{
  if s:Plugin_is_activated('startify', 0)
    call s:Highlighter('StartifySelect', s:none, s:bg_2, s:fg_1, s:none)
    highlight! link StartifyBracket Ignore
    highlight! link StartifyFile Accent
    highlight! link StartifyFooter Dimmed
    highlight! link StartifyHeader Accent
    highlight! link StartifyNumber Dimmed
    highlight! link StartifyPath Text
    highlight! link StartifySection Title
    highlight! link StartifySlash StartifyPath
    highlight! link StartifySpecial StartifyPath
    highlight! link StartifyVar StartifyPath
  endif
" }}}
" vista.vim: {{{
  if s:Plugin_is_activated('vista', 0)
    highlight! link VistaBracket Ignore
    highlight! link VistaChildrenNr Ignore
    highlight! link VistaColon Ignore
    highlight! link VistaFloat NormalFloat
    highlight! link VistaIcon Ignore
    highlight! link VistaLineNr Ignore
    highlight! link VistaPrefix Ignore
    highlight! link VistaScope Dimmed
    highlight! link VistaTag Dimmed
  endif
" }}}
" which-key.nvim: {{{
  if s:Plugin_is_activated('which-key', 0)
    highlight! link WhichKey Text
    highlight! link WhichKeyDesc Text
    highlight! link WhichKeyFloat NormalFloat
    highlight! link WhichKeyGroup Dimmed
    highlight! link WhichKeySeparator NonText
    highlight! link WhichKeyValue Text
  endif
" }}}
