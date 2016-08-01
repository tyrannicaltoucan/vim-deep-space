" -----------------------------------------------------------
" Theme: deep-space
" Author: Brandon Siders <tyrannicaltoucan@gmail.com>
" License: MIT
" Version: 1.0
" -----------------------------------------------------------

highlight clear

if exists('syntax_on')
    syntax reset
endif

set background=dark

let t_Co = 256
let colors_name = 'deep-space'

if !exists('g:deepspace_italics')
    let g:deepspace_italics = 0
endif

let s:gray0     = ['#1b202a', 234]
let s:gray1     = ['#2a3341', 236]
let s:gray2     = ['#323c4d', 237]
let s:gray3     = ['#51617d', 243]
let s:gray4     = ['#9aa7bd', 248]
let s:gray5     = ['#c9d0dc', 252]
let s:red       = ['#b15e7c', 132]
let s:green     = ['#709d6c', 65]
let s:yellow    = ['#b5a262', 143]
let s:blue      = ['#608cc3', 67]
let s:purple    = ['#8f72bf', 97]
let s:cyan      = ['#56adb7', 73]
let s:pink      = ['#ca8bba', 175]
let s:orange    = ['#b3785d', 137]
let s:neonblue  = ['#599dff', 75]

function! s:HL(group, fg, bg, attr)
    let l:attr = a:attr
    if g:deepspace_italics == 0 && l:attr ==? 'italic'
        let l:attr = 'none'
    endif

    if !empty(a:fg)
        exec 'hi ' . a:group . ' guifg=' . a:fg[0] . ' ctermfg=' . a:fg[1]
    endif

    if !empty(a:bg)
        exec 'hi ' . a:group . ' guibg=' . a:bg[0] . ' ctermbg=' . a:bg[1]
    endif

    if l:attr != ''
        exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr
    endif
endfun

" Editor
call s:HL('ColorColumn',                    '',         s:gray1,    '')
call s:HL('Cursor',                         '',         s:neonblue, '')
call s:HL('CursorColumn',                   s:gray3,    s:gray4,    '')
call s:HL('CursorLine',                     '',         s:gray1,    'none')
call s:HL('CursorLineNr',                   s:gray5,    s:gray1,    'none')
call s:HL('DiffAdd',                        s:gray0,    s:green,    'none')
call s:HL('DiffChange',                     s:gray0,    s:yellow,   'none')
call s:HL('DiffDelete',                     s:gray0,    s:red,      'none')
call s:HL('DiffText',                       s:gray0,    s:blue,     'none')
call s:HL('Directory',                      s:blue,     '',         '')
call s:HL('Error',                          s:red,      s:gray0,    'bold')
call s:HL('ErrorMsg',                       s:red,      s:gray0,    'bold')
call s:HL('Folded',                         s:gray1,    s:gray0,    '')
call s:HL('FoldColumn',                     s:gray4,    s:gray0,    '')
call s:HL('LineNr',                         s:gray2,    '',         '')
call s:HL('MatchParen',                     s:gray0,    s:pink,     'bold')
call s:HL('ModeMsg',                        s:green,    '',         '')
call s:HL('MoreMsg',                        s:green,    '',         '')
call s:HL('NonText',                        s:gray3,    '',         '')
call s:HL('Normal',                         s:gray4,    s:gray0,    'none')
call s:HL('Pmenu',                          s:gray4,    s:gray2,    '')
call s:HL('PmenuSbar',                      s:gray3,    s:gray4,    '')
call s:HL('PmenuSel',                       s:gray0,    s:neonblue, '')
call s:HL('PmenuThumb',                     s:gray4,    s:gray5,    '')
call s:HL('Question',                       s:yellow,   '',         '')
call s:HL('Search',                         s:gray0,    s:yellow,   '')
call s:HL('SpecialKey',                     s:gray3,    '',         '')
call s:HL('SpellBad',                       s:red,      '',         'undercurl')
call s:HL('SpellCap',                       s:blue,     '',         'undercurl')
call s:HL('StatusLine',                     s:gray4,    s:gray2,    'none')
call s:HL('StatusLineNC',                   s:gray0,    s:gray3,    '')
call s:HL('TabLine',                        s:gray0,    s:gray4,    'none')
call s:HL('TabLineSel',                     s:gray0,    s:neonblue, '')
call s:HL('VertSplit',                      s:gray3,    s:gray0,    'none')
call s:HL('Visual',                         s:gray3,    s:gray1,    '')
call s:HL('WarningMsg',                     s:yellow,   '',         '')
call s:HL('WildMenu',                       s:gray0,    s:neonblue, '')

" Basics
call s:HL('Constant',                       s:red,      '',         '')
call s:HL('String',                         s:green,    '',         '')
call s:HL('Identifier',                     s:purple,   '',         'none')
call s:HL('Function',                       s:yellow,   '',         '')
call s:HL('Statement',                      s:blue,     '',         'none')
call s:HL('Conditional',                    s:blue,     '',         '')
call s:HL('Repeat',                         s:blue,     '',         '')
call s:HL('Label',                          s:blue,     '',         '')
call s:HL('Comment',                        s:gray3,    '',         'italic')
call s:HL('Include',                        s:purple,   '',         '')
call s:HL('Define',                         s:blue,     '',         'none')
call s:HL('Macro',                          s:blue,     '',         '')
call s:HL('PreCondit',                      s:purple,   '',         '')
call s:HL('Special',                        s:cyan,     '',         '')
call s:HL('Tag',                            s:green,    '',         '')
call s:HL('SpecialComment',                 s:green,    '',         '')
call s:HL('Debug',                          s:green,    '',         '')
call s:HL('PreProc',                        s:cyan,     '',         '')
call s:HL('Type',                           s:orange,   '',         'none')
call s:HL('Operator',                       s:cyan,     '',         'none')
call s:HL('Todo',                           s:pink,     s:gray0,    'bold')
call s:HL('Underlined',                     s:yellow,   '',         '')

" HTML
call s:HL('htmlArg',                        s:red,      '',         '')
call s:HL('htmlEndTag',                     s:blue,     '',         '')
call s:HL('htmlTag',                        s:blue,     '',         '')
call s:HL('htmlTagName',                    s:purple,   '',         '')
call s:HL('Title',                          s:yellow,   '',         '')

" Javascript
call s:HL('javaScriptIdentifier',           s:purple,   '',         '')
call s:HL('javaScriptFunction',             s:blue,     '',         '')
call s:HL('javaScriptNumber',               s:red,      '',         '')
call s:HL('javaScriptReserved',             s:blue,     '',         '')
call s:HL('javaScriptRequire',              s:cyan,     '',         '')
call s:HL('javaScriptNull',                 s:red,      '',         '')

" CSS
call s:HL('cssTagName',                     s:blue,     '',         '')
call s:HL('cssClassName',                   s:yellow,   '',         '')
call s:HL('cssDefinition',                  s:blue,     '',         '')
call s:HL('cssFunctionName',                s:blue,     '',         '')
call s:HL('cssIdentifier',                  s:orange,   '',         '')
call s:HL('cssAtrributeSelector',           s:green,    '',         '')
call s:HL('cssProp',                        s:orange,   '',         '')
call s:HL('cssPseudoClassId',               s:red,      '',         '')
call s:HL('cssFontAttr',                    s:cyan,     '',         '')
call s:HL('cssImportant',                   s:cyan,     '',         '')
call s:HL('cssIncludeKeyword',              s:purple,   '',         '')
call s:HL('cssMediaType',                   s:cyan,     '',         '')
call s:HL('cssBraces',                      s:gray4,    '',         '')
call s:HL('cssSelectorOp',                  s:blue,     '',         '')
call s:HL('cssSelectorOp2',                 s:cyan,     '',         '')

" SaSS
call s:HL('sassAmpersand',                  s:red,      '',         '')
call s:HL('sassClass',                      s:yellow,   '',         '')
call s:HL('sassFunction',                   s:blue,     '',         '')
call s:HL('sassFor',                        s:blue,     '',         '')

" Ruby
call s:HL('rubyClass',                      s:blue,     '',         '')
call s:HL('rubyKeyword',                    s:yellow,   '',         '')
call s:HL('rubyRegexpSpecial',              s:yellow,   '',         '')
call s:HL('rubyRegexp',                     s:cyan,     '',         '')
call s:HL('rubyRegexpDelimiter',            s:gray4,    '',         '')
call s:HL('rubyStringDelimiter',            s:green,    '',         '')
call s:HL('rubyInterpolationDelimiter',     s:purple,   '',         '')
call s:HL('rubyBlockParameterList',         s:purple,   '',         '')

" Git
call s:HL('gitcommitSummary',               s:cyan,     '',         '')
call s:HL('gitcommitComment',               s:gray3,    '',         'italic')
call s:HL('gitcommitOnBranch',              '',         '',         'italic')
call s:HL('gitcommitFile',                  s:cyan,     '',         '')
call s:HL('gitcommitHeader',                s:purple,   '',         '')
call s:HL('gitcommitBranch',                s:orange,   '',         '')
call s:HL('gitcommitUnmerged',              s:green,    '',         '')
call s:HL('gitcommitUntrackedFile',         s:blue,     '',         '')
call s:HL('gitcommitSelectedFile',          s:green,    '',         '')
call s:HL('gitcommitDiscardedFile',         s:red,      '',         '')
call s:HL('gitcommitUnmergedFile',          s:yellow,   '',         '')
call s:HL('gitcommitSelectedType',          s:green,    '',         '')
call s:HL('gitcommitDiscardedType',         s:red,      '',         '')
hi link gitcommitNoBranch           gitcommitBranch
hi link gitcommitUntracked          gitcommitComment
hi link gitcommitDiscarded          gitcommitComment
hi link gitcommitSelected           gitcommitComment
hi link gitcommitDiscardedArrow     gitcommitDiscardedFile
hi link gitcommitSelectedArrow      gitcommitSelectedFile
hi link gitcommitUnmergedArrow      gitcommitUnmergedFile
hi link gitcommitFirstLine          gitcommitFile

" Vim-Signify
call s:HL('SignifySignAdd',                 s:green,    '',         '')
call s:HL('SignifySignChange',              s:yellow,   '',         '')
call s:HL('SignifySignDelete',              s:red,      '',         '')

" Vim-Gitgutter
hi link GitGutterAdd        SignifySignAdd
hi link GitGutterChange     SignifySignChange
hi link GitGutterDelete     SignifySignDelete
call s:HL('GitGutterChangeDelete',          s:orange,   '',         '')

" Vim-Fugitive
call s:HL('diffAdded',                      s:green,    '',         '')
call s:HL('diffRemoved',                    s:red,      '',         '')
