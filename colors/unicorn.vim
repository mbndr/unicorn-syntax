" Unicorn syntax theme (https://github.com/mbndr/unicorn_syntax)
" This file was generated (NO NOT EDIT)

if !has("gui_running") && &t_Co < 256
    finish
endif

set background=dark

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "unicorn"

hi SpellLocal guibg=#191919 guifg=none gui=undercurl guisp=#f6d32d
hi SpellRare guibg=#191919 guifg=none gui=undercurl guisp=#d3869b
hi String guibg=#191919 guifg=#b8bb26 gui=none
hi Float guibg=#191919 guifg=#D6461A gui=none
hi markdownH5 guibg=#191919 guifg=#719386 gui=none
hi markdownH6 guibg=#191919 guifg=#719386 gui=none
hi LspDiagnosticsUnderlineHint guibg=#191919 guifg=#ebdbb2 gui=underline guisp=#d3869b
hi DiagnosticUnderlineInfo guibg=#191919 guifg=#ebdbb2 gui=underline guisp=#719386
hi RedrawDebugComposed guibg=#b8bb26 guifg=#191919 gui=none
hi DiffText guibg=#D6461A guifg=#ebdbb2 gui=none
hi LspDiagnosticsWarning guibg=#191919 guifg=#f6d32d gui=none
hi DiffAdd guibg=#191919 guifg=#b8bb26 gui=none
hi EndOfBuffer guibg=none guifg=#719386 gui=none
hi NvimTreeNormal guibg=#131313 guifg=#ebdbb2 gui=none
hi makeTarget guibg=#191919 guifg=#b8bb26 gui=none
hi TelescopeBorder guibg=#191919 guifg=#719386 gui=none
hi NvimTreeFolderName guibg=#131313 guifg=#719386 gui=none
hi NvimTreeGitStaged guibg=#131313 guifg=#b8bb26 gui=none
hi VertSplit guibg=#191919 guifg=#665b50 gui=none
hi Statement guibg=#191919 guifg=#719386 gui=none
hi NvimTreeGitNew guibg=#131313 guifg=#f6d32d gui=none
hi markdownH1Delimiter guibg=#191919 guifg=#719386 gui=none
hi NvimTreeRootFolder guibg=#131313 guifg=#665b50 gui=none
hi RedrawDebugRecompose guibg=#D6461A guifg=#ebdbb2 gui=none
hi markdownH5Delimiter guibg=#191919 guifg=#719386 gui=none
hi DiagnosticUnderline guibg=#191919 guifg=#ebdbb2 gui=underline guisp=#D6461A
hi DiffDelete guibg=#191919 guifg=#D6461A gui=none
hi ColorColumn guibg=#262626 guifg=#ebdbb2 gui=none
hi ModeMsg guibg=#191919 guifg=#d3869b gui=none
hi Pmenu guibg=#262626 guifg=#719386 gui=none
hi Comment guibg=#191919 guifg=#928374 gui=none
hi NvimTreeImageFile guibg=#131313 guifg=#ebdbb2 gui=none
hi DiagnosticError guibg=#191919 guifg=#D6461A gui=none
hi SpellBad guibg=#191919 guifg=none gui=undercurl guisp=#fe8019
hi MatchParen guibg=#262626 guifg=#fe8019 gui=bold
hi LspDiagnosticsDefaultHint guibg=#191919 guifg=#d3869b gui=none
hi Boolean guibg=#191919 guifg=#d3869b gui=none
hi Type guibg=#191919 guifg=#719386 gui=none
hi Number guibg=#191919 guifg=#fe8019 gui=none
hi markdownH6Delimiter guibg=#191919 guifg=#719386 gui=none
hi LspDiagnosticsUnderlineInformation guibg=#191919 guifg=#ebdbb2 gui=underline guisp=#719386
hi DiagnosticUnderlineHint guibg=#191919 guifg=#ebdbb2 gui=underline guisp=#d3869b
hi MoreMsg guibg=#191919 guifg=#719386 gui=none
hi NvimInternalError guibg=#D6461A guifg=#191919 gui=none
hi RedrawDebugClear guibg=#f6d32d guifg=#191919 gui=none
hi tutorOK guibg=#191919 guifg=#b8bb26 gui=bold
hi NvimTreeSpecialFile guibg=#131313 guifg=#b8bb26 gui=none
hi LspDiagnosticsUnderlineError guibg=#191919 guifg=#ebdbb2 gui=underline guisp=#D6461A
hi Folded guibg=#262626 guifg=#91876d gui=none
hi markdownUrl guibg=#191919 guifg=#fe8019 gui=none
hi tutorX guibg=#191919 guifg=#D6461A gui=bold
hi LineNr guibg=#191919 guifg=#665b50 gui=none
hi SignColumn guibg=#191919 guifg=#ebdbb2 gui=none
hi markdownH4Delimiter guibg=#191919 guifg=#719386 gui=none
hi Error guibg=#D6461A guifg=#ebdbb2 gui=none
hi Normal guibg=#191919 guifg=#ebdbb2 gui=none
hi Visual guibg=#719386 guifg=#191919 gui=none
hi texInputFile guibg=#191919 guifg=#b8bb26 gui=none
hi NvimTreeFolderIcon guibg=#131313 guifg=#719386 gui=none
hi LspDiagnosticsDefaultInformation guibg=#191919 guifg=#719386 gui=none
hi Character guibg=#191919 guifg=#719386 gui=none
hi markdownH4 guibg=#191919 guifg=#719386 gui=none
hi PmenuSel guibg=#91876d guifg=#191919 gui=none
hi DiagnosticUnderlineError guibg=#191919 guifg=#ebdbb2 gui=underline guisp=#D6461A
hi Search guibg=#f6d32d guifg=#191919 gui=none
hi NormalFloat guibg=#262626 guifg=#719386 gui=none
hi SpellCap guibg=#191919 guifg=none gui=undercurl guisp=#719386
hi StatusLineNC guibg=#262626 guifg=#91876d gui=none
hi NvimTreeGitDeleted guibg=#131313 guifg=#D6461A gui=none
hi LspDiagnosticsInformation guibg=#191919 guifg=#719386 gui=none
hi LspDiagnosticsHint guibg=#191919 guifg=#d3869b gui=none
hi LspDiagnosticsDefaultWarning guibg=#191919 guifg=#f6d32d gui=none
hi PreProc guibg=#191919 guifg=#719386 gui=none
hi NvimTreeGitDirty guibg=#131313 guifg=#fe8019 gui=none
hi WarningMsg guibg=#191919 guifg=#D6461A gui=none
hi LspDiagnosticsUnderlineWarning guibg=#191919 guifg=#ebdbb2 gui=underline guisp=#f6d32d
hi markdownH3 guibg=#191919 guifg=#719386 gui=none
hi markdownCode guibg=#191919 guifg=#91876d gui=none
hi Underlined guibg=#191919 guifg=#719386 gui=underline
hi StatusLine guibg=#262626 guifg=#ebdbb2 gui=none
hi markdownH2 guibg=#191919 guifg=#719386 gui=none
hi NvimTreeIndentMarker guibg=#131313 guifg=#262626 gui=none
hi CursorLineNr guibg=#262626 guifg=#719386 gui=none
hi Question guibg=#191919 guifg=#719386 gui=none
hi NvimTreeOpenedFolderName guibg=#131313 guifg=#719386 gui=none
hi LspDiagnosticsError guibg=#191919 guifg=#D6461A gui=none
hi SpecialKey guibg=#191919 guifg=#f6d32d gui=none
hi Directory guibg=#191919 guifg=#719386 gui=none
hi markdownH2Delimiter guibg=#191919 guifg=#719386 gui=none
hi markdownLinkText guibg=#191919 guifg=#b8bb26 gui=none
hi DiagnosticUnderlineWarn guibg=#191919 guifg=#ebdbb2 gui=underline guisp=#f6d32d
hi dartIdentifier guibg=#191919 guifg=#719386 gui=none
hi Special guibg=#191919 guifg=#d3869b gui=none
hi Title guibg=#191919 guifg=#d3869b gui=none
hi DiffChange guibg=#191919 guifg=#719386 gui=none
hi markdownCodeDelimiter guibg=#191919 guifg=#d3869b gui=none
hi mesonBuiltin guibg=#191919 guifg=#719386 gui=none
hi tutorLink guibg=#191919 guifg=#719386 gui=underline
hi NonText guibg=#191919 guifg=#b8bb26 gui=none
hi ErrorMsg guibg=#D6461A guifg=#ebdbb2 gui=none
hi Constant guibg=#191919 guifg=#d3869b gui=none
hi Identifier guibg=#191919 guifg=#ebdbb2 gui=none
hi markdownH1 guibg=#191919 guifg=#719386 gui=none
hi markdownH3Delimiter guibg=#191919 guifg=#719386 gui=none
hi LspDiagnosticsDefaultError guibg=#191919 guifg=#D6461A gui=none
hi CursorLine guibg=none guifg=none gui=none
hi Todo guibg=#262626 guifg=#fe8019 gui=bold

let g:unicorn_purple = "#d3869b"
let g:unicorn_yellow = "#f6d32d"
let g:unicorn_white_dark = "#91876d"
let g:unicorn_tree_bg = "#131313"
let g:unicorn_white = "#ebdbb2"
let g:unicorn_green = "#b8bb26"
let g:unicorn_blue = "#719386"
let g:unicorn_grey = "#928374"
let g:unicorn_dark_grey = "#665b50"
let g:unicorn_black = "#191919"
let g:unicorn_red = "#D6461A"
let g:unicorn_orange = "#fe8019"
let g:unicorn_black_light = "#262626"
