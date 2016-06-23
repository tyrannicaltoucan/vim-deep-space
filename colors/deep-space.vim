" -----------------------------------------------------------
" deep-space.vim -- An intergalactically friendly Vim theme.
" Maintainer: Brandon Siders <tyrannicaltoucan@gmail.com>
" License: MIT
" Modifed: 23 June 2016
" -----------------------------------------------------------

highlight clear

if exists("syntax_on")
    syntax reset
endif

set background=dark

let colors_name = "deep_space"

" Color Definitions
let s:black         = "#1b202a"
let s:visual_gray   = "#2a3341"
let s:cursor_blue   = "#599dff"
let s:light_gray    = "#9aa7bd"
let s:dark_gray     = "#323c4d"
let s:mid_gray      = "#607395"
let s:white         = "#c9d0dc"

let s:red           = "#b15e7c"
let s:green         = "#709d6c"
let s:yellow        = "#b5a262"
let s:blue          = "#608cc3"
let s:purple        = "#8f72bf"
let s:cyan          = "#56adb7"
let s:pink          = "#ca8bba"
let s:orange        = "#b3785d"

let s:none          = "NONE"

function! s:HL(group, fg, bg, ...)
    execute 'hi!' a:group 'guifg='a:fg 'guibg='a:bg
                \ 'gui='.(a:0 > 0 ? get(a:1, 'gui', 'NONE'): 'NONE')
endfun

" Text
call s:HL("Normal",         s:light_gray,   s:black)

" Base sytax styling
call s:HL("Comment",        s:mid_gray,     s:none,         {"gui": "italic"})
call s:HL("Constant",       s:cyan,         s:none)
call s:HL("String",         s:green,        s:none)
call s:HL("Character",      s:red,          s:none)
call s:HL("Number",         s:red,          s:none)
call s:HL("Boolean",        s:red,          s:none)
call s:HL("Float",          s:red,          s:none)
call s:HL("Identifier",     s:purple,       s:none)
call s:HL("Function",       s:yellow,       s:none)
call s:HL("Statement",      s:blue,         s:none)
call s:HL("Conditional",    s:blue,         s:none)
call s:HL("Repeat",         s:blue,         s:none)
call s:HL("Label",          s:blue,         s:none)
call s:HL("Operator",       s:cyan,         s:none)
call s:HL("Keyword",        s:cyan,         s:none)
call s:HL("Exception",      s:blue,         s:none)
call s:HL("PreProc",        s:cyan,         s:none)
call s:HL("Include",        s:purple,       s:none)
call s:HL("Define",         s:blue,         s:none)
call s:HL("Macro",          s:purple,       s:none)
call s:HL("PreCondit",      s:purple,       s:none)
call s:HL("Type",           s:orange,       s:none)
call s:HL("StorageClass",   s:orange,       s:none)
call s:HL("Structure",      s:orange,       s:none)
call s:HL("Typedef",        s:blue,         s:none)
call s:HL("Special",        s:yellow,       s:none)
call s:HL("SpecialChar",    s:red,          s:none)
call s:HL("Tag",            s:blue,         s:none)
call s:HL("Delimiter",      s:cyan,         s:none)
call s:HL("SpecialComment", s:light_gray,   s:none)
call s:HL("Underlined",     s:none,         s:none,         {'gui': 'underline'})
call s:HL("Ignore",         s:light_gray,   s:none)
call s:HL("Error",          s:red,          s:none,         {'gui': 'bold'})
call s:HL("Todo",           s:pink,         s:none,         {'gui': 'bolditalic'})

" Editor styling
call s:HL("ColorColumn",    s:none,         s:visual_gray)
call s:HL("Cursor",         s:black,        s:cursor_blue)
call s:HL("CursorColumn",   s:light_gray,   s:visual_gray)
call s:HL("CursorLine",     s:none,         s:visual_gray)
call s:HL("CursorLineNr",   s:white,        s:visual_gray)
call s:HL("DiffAdd",        s:black,        s:green)
call s:HL("DiffChange",     s:black,        s:yellow)
call s:HL("DiffDelete",     s:black,        s:red)
call s:HL("DiffText",       s:black,        s:blue)
call s:HL("Directory",      s:blue,         s:none)
call s:HL("Error",          s:red,          s:none,         {'gui': 'underline'})
call s:HL("ErrorMsg",       s:red,          s:none,         {'gui': 'bold'})
call s:HL("Folded",         s:mid_gray,     s:black)
call s:HL("FoldColumn",     s:light_gray,   s:none)
call s:HL("IncSearch",      s:black,        s:light_gray)
call s:HL("LineNr",         s:dark_gray,    s:none)
call s:HL("MatchParen",     s:cursor_blue,  s:none,         {'gui': 'underline'})
call s:HL("ModeMsg",        s:green,        s:none)
call s:HL("MoreMsg",        s:green,        s:none)
call s:HL("NonText",        s:dark_gray,    s:none)
call s:HL("Pmenu",          s:light_gray,   s:dark_gray)
call s:HL("PmenuSbar",      s:mid_gray,     s:light_gray)
call s:HL("PmenuSel",       s:black,        s:cursor_blue)
call s:HL("PmenuThumb",     s:light_gray,   s:white)
call s:HL("Question",       s:yellow,       s:black)
call s:HL("Search",         s:black,        s:yellow)
call s:HL("SpecialKey",     s:mid_gray,     s:none)
call s:HL("SpellBad",       s:red,          s:none,         {'gui': 'boldundercurl'})
call s:HL("SpellCap",       s:blue,         s:none,         {'gui': 'boldundercurl'})
call s:HL("SpellLocal",     s:cyan,         s:none,         {'gui': 'boldundercurl'})
call s:HL("SpellRare",      s:purple,       s:none,         {'gui': 'boldundercurl'})
call s:HL("StatusLine",     s:light_gray,   s:visual_gray)
call s:HL("StatusLineNC",   s:black,        s:dark_gray)
call s:HL("TabLine",        s:black,        s:light_gray)
call s:HL("TabLineSel",     s:light_gray,   s:black,        {'gui': 'bold'})
call s:HL("Title",          s:blue,         s:none,         {'gui': 'bold'})
call s:HL("VertSplit",      s:mid_gray,     s:none)
call s:HL("Visual",         s:mid_gray,     s:dark_gray)
call s:HL("VisualNOS",      s:white,        s:none,         {'gui': 'boldunderline'})
call s:HL("WarningMsg",     s:red,          s:none)
call s:HL("WildMenu",       s:black,        s:cursor_blue)

" Javascript styling
call s:HL("javaScriptBraces",       s:light_gray,   s:none)
call s:HL("javaScriptFunction",     s:blue,         s:none)
call s:HL("javaScriptIdentifier",   s:purple,       s:none)
call s:HL("javaScriptNull",         s:red,          s:none)
call s:HL("javaScriptNumber",       s:red,          s:none)
call s:HL("javaScriptRequire",      s:cyan,         s:none)
call s:HL("javaScriptReserved",     s:blue,         s:none)

" CSS Styling
call s:HL("cssAttrComma",           s:blue,        s:none)
call s:HL("cssAttributeSelector",   s:green,       s:none)
call s:HL("cssBraces",              s:light_gray,  s:none)
call s:HL("cssClassName",           s:yellow,      s:none)
call s:HL("cssClassNameDot",        s:yellow,      s:none)
call s:HL("cssDefinition",          s:blue,        s:none)
call s:HL("cssFontAttr",            s:red,         s:none)
call s:HL("cssFontDescriptor",      s:blue,        s:none)
call s:HL("cssFunctionName",        s:blue,        s:none)
call s:HL("cssIdentifier",          s:orange,      s:none)
call s:HL("cssImportant",           s:blue,        s:none)
call s:HL("cssInclude",             s:light_gray,  s:none)
call s:HL("cssIncludeKeyword",      s:purple,      s:none)
call s:HL("cssMediaType",           s:cyan,        s:none)
call s:HL("cssProp",                s:light_gray,  s:none)
call s:HL("cssPseudoClassId",       s:red,         s:none)
call s:HL("cssSelectorOp",          s:blue,        s:none)
call s:HL("cssSelectorOp2",         s:blue,        s:none)
call s:HL("cssTagName",             s:blue,        s:none)

" HTML Styling
call s:HL("Title",                  s:light_gray,   s:none,        {'gui': 'bold'})
call s:HL("htmlArg",                s:red,          s:none)
call s:HL("htmlEndTag",             s:blue,         s:none)
call s:HL("htmlH1",                 s:light_gray,   s:none)
call s:HL("htmlLink",               s:cyan,         s:none)
call s:HL("htmlSpecialChar",        s:orange,       s:none)
call s:HL("htmlSpecialTagName",     s:purple,       s:none)
call s:HL("htmlTag",                s:light_gray,   s:none)
call s:HL("htmlTagName",            s:purple,       s:none)

" Ruby styling
call s:HL("rubyBlockParameter",          s:purple,      s:none)
call s:HL("rubyBlockParameterList",      s:purple,      s:none)
call s:HL("rubyClass",                   s:blue,        s:none)
call s:HL("rubyConstant",                s:orange,      s:none)
call s:HL("rubyControl",                 s:blue,        s:none)
call s:HL("rubyEscape",                  s:red,         s:none)
call s:HL("rubyFunction",                s:yellow,      s:none)
call s:HL("rubyInterpolation",           s:green,       s:none)
call s:HL("rubyInterpolationDelimiter",  s:pink,        s:none)
call s:HL("rubyRegexp",                  s:cyan,        s:none)
call s:HL("rubyRegexpDelimiter",         s:cyan,        s:none)
call s:HL("rubyStringDelimiter",         s:green,       s:none)
call s:HL("rubySymbol",                  s:red,         s:none)
