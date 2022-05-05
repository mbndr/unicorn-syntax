" Unicorn syntax theme (https://github.com/mbndr/unicorn_syntax)
" This file was generated (NO NOT EDIT)

if !has("gui_running") && &t_Co < 256
    finish
endif

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "unicorn"

if &background == "light"
hi Boolean guibg=#ebdbb2 guifg=#9d6877 gui=none
hi Character guibg=#ebdbb2 guifg=#3b6a58 gui=none
hi ColorColumn guibg=#dbcca6 guifg=#3f3f3f gui=none
hi Comment guibg=#ebdbb2 guifg=#928374 gui=none
hi Constant guibg=#ebdbb2 guifg=#9d6877 gui=none
hi CursorLine guibg=none guifg=none gui=none
hi CursorLineNr guibg=#dbcca6 guifg=#3b6a58 gui=none
hi DiagnosticError guibg=#ebdbb2 guifg=#D6461A gui=none
hi DiagnosticUnderline guibg=#ebdbb2 guifg=#3f3f3f gui=underline guisp=#D6461A
hi DiagnosticUnderlineError guibg=#ebdbb2 guifg=#3f3f3f gui=underline guisp=#D6461A
hi DiagnosticUnderlineHint guibg=#ebdbb2 guifg=#3f3f3f gui=underline guisp=#9d6877
hi DiagnosticUnderlineInfo guibg=#ebdbb2 guifg=#3f3f3f gui=underline guisp=#3b6a58
hi DiagnosticUnderlineWarn guibg=#ebdbb2 guifg=#3f3f3f gui=underline guisp=#c5b256
hi DiffAdd guibg=#ebdbb2 guifg=#909314 gui=none
hi DiffChange guibg=#ebdbb2 guifg=#3b6a58 gui=none
hi DiffDelete guibg=#ebdbb2 guifg=#D6461A gui=none
hi DiffText guibg=#D6461A guifg=#3f3f3f gui=none
hi Directory guibg=#ebdbb2 guifg=#3b6a58 gui=none
hi EndOfBuffer guibg=none guifg=#3b6a58 gui=none
hi Error guibg=#D6461A guifg=#3f3f3f gui=none
hi ErrorMsg guibg=#D6461A guifg=#3f3f3f gui=none
hi Float guibg=#ebdbb2 guifg=#D6461A gui=none
hi Folded guibg=#dbcca6 guifg=#91876d gui=none
hi Identifier guibg=#ebdbb2 guifg=#3f3f3f gui=none
hi LineNr guibg=#ebdbb2 guifg=#988d6f gui=none
hi LspDiagnosticsDefaultError guibg=#ebdbb2 guifg=#D6461A gui=none
hi LspDiagnosticsDefaultHint guibg=#ebdbb2 guifg=#9d6877 gui=none
hi LspDiagnosticsDefaultInformation guibg=#ebdbb2 guifg=#3b6a58 gui=none
hi LspDiagnosticsDefaultWarning guibg=#ebdbb2 guifg=#c5b256 gui=none
hi LspDiagnosticsError guibg=#ebdbb2 guifg=#D6461A gui=none
hi LspDiagnosticsHint guibg=#ebdbb2 guifg=#9d6877 gui=none
hi LspDiagnosticsInformation guibg=#ebdbb2 guifg=#3b6a58 gui=none
hi LspDiagnosticsUnderlineError guibg=#ebdbb2 guifg=#3f3f3f gui=underline guisp=#D6461A
hi LspDiagnosticsUnderlineHint guibg=#ebdbb2 guifg=#3f3f3f gui=underline guisp=#9d6877
hi LspDiagnosticsUnderlineInformation guibg=#ebdbb2 guifg=#3f3f3f gui=underline guisp=#3b6a58
hi LspDiagnosticsUnderlineWarning guibg=#ebdbb2 guifg=#3f3f3f gui=underline guisp=#c5b256
hi LspDiagnosticsWarning guibg=#ebdbb2 guifg=#c5b256 gui=none
hi MatchParen guibg=#dbcca6 guifg=#d26106 gui=bold
hi ModeMsg guibg=#ebdbb2 guifg=#9d6877 gui=none
hi MoreMsg guibg=#ebdbb2 guifg=#3b6a58 gui=none
hi NonText guibg=#ebdbb2 guifg=#909314 gui=none
hi Normal guibg=#ebdbb2 guifg=#3f3f3f gui=none
hi NormalFloat guibg=#dbcca6 guifg=#3b6a58 gui=none
hi Number guibg=#ebdbb2 guifg=#d26106 gui=none
hi NvimInternalError guibg=#D6461A guifg=#ebdbb2 gui=none
hi NvimTreeFolderIcon guibg=#dbcca7 guifg=#3b6a58 gui=none
hi NvimTreeFolderName guibg=#dbcca7 guifg=#3b6a58 gui=none
hi NvimTreeGitDeleted guibg=#dbcca7 guifg=#D6461A gui=none
hi NvimTreeGitDirty guibg=#dbcca7 guifg=#d26106 gui=none
hi NvimTreeGitNew guibg=#dbcca7 guifg=#c5b256 gui=none
hi NvimTreeGitStaged guibg=#dbcca7 guifg=#909314 gui=none
hi NvimTreeImageFile guibg=#dbcca7 guifg=#3f3f3f gui=none
hi NvimTreeIndentMarker guibg=#dbcca7 guifg=#dbcca6 gui=none
hi NvimTreeNormal guibg=#dbcca7 guifg=#3f3f3f gui=none
hi NvimTreeOpenedFolderName guibg=#dbcca7 guifg=#3b6a58 gui=none
hi NvimTreeRootFolder guibg=#dbcca7 guifg=#988d6f gui=none
hi NvimTreeSpecialFile guibg=#dbcca7 guifg=#909314 gui=none
hi Pmenu guibg=#dbcca6 guifg=#3b6a58 gui=none
hi PmenuSel guibg=#91876d guifg=#ebdbb2 gui=none
hi PreProc guibg=#ebdbb2 guifg=#3b6a58 gui=none
hi Question guibg=#ebdbb2 guifg=#3b6a58 gui=none
hi RedrawDebugClear guibg=#c5b256 guifg=#ebdbb2 gui=none
hi RedrawDebugComposed guibg=#909314 guifg=#ebdbb2 gui=none
hi RedrawDebugRecompose guibg=#D6461A guifg=#3f3f3f gui=none
hi Search guibg=#c5b256 guifg=#ebdbb2 gui=none
hi SignColumn guibg=#ebdbb2 guifg=#3f3f3f gui=none
hi Special guibg=#ebdbb2 guifg=#9d6877 gui=none
hi SpecialKey guibg=#ebdbb2 guifg=#c5b256 gui=none
hi SpellBad guibg=#ebdbb2 guifg=none gui=undercurl guisp=#d26106
hi SpellCap guibg=#ebdbb2 guifg=none gui=undercurl guisp=#3b6a58
hi SpellLocal guibg=#ebdbb2 guifg=none gui=undercurl guisp=#c5b256
hi SpellRare guibg=#ebdbb2 guifg=none gui=undercurl guisp=#9d6877
hi Statement guibg=#ebdbb2 guifg=#3b6a58 gui=none
hi StatusLine guibg=#dbcca6 guifg=#3f3f3f gui=none
hi StatusLineNC guibg=#dbcca6 guifg=#91876d gui=none
hi String guibg=#ebdbb2 guifg=#909314 gui=none
hi TelescopeBorder guibg=#ebdbb2 guifg=#3b6a58 gui=none
hi Title guibg=#ebdbb2 guifg=#9d6877 gui=none
hi Todo guibg=#dbcca6 guifg=#d26106 gui=bold
hi Type guibg=#ebdbb2 guifg=#3b6a58 gui=none
hi Underlined guibg=#ebdbb2 guifg=#3b6a58 gui=underline
hi VertSplit guibg=#ebdbb2 guifg=#988d6f gui=none
hi Visual guibg=#3b6a58 guifg=#ebdbb2 gui=none
hi WarningMsg guibg=#ebdbb2 guifg=#D6461A gui=none
hi dartIdentifier guibg=#ebdbb2 guifg=#3b6a58 gui=none
hi makeTarget guibg=#ebdbb2 guifg=#909314 gui=none
hi markdownCode guibg=#ebdbb2 guifg=#91876d gui=none
hi markdownCodeDelimiter guibg=#ebdbb2 guifg=#9d6877 gui=none
hi markdownH1 guibg=#ebdbb2 guifg=#3b6a58 gui=none
hi markdownH1Delimiter guibg=#ebdbb2 guifg=#3b6a58 gui=none
hi markdownH2 guibg=#ebdbb2 guifg=#3b6a58 gui=none
hi markdownH2Delimiter guibg=#ebdbb2 guifg=#3b6a58 gui=none
hi markdownH3 guibg=#ebdbb2 guifg=#3b6a58 gui=none
hi markdownH3Delimiter guibg=#ebdbb2 guifg=#3b6a58 gui=none
hi markdownH4 guibg=#ebdbb2 guifg=#3b6a58 gui=none
hi markdownH4Delimiter guibg=#ebdbb2 guifg=#3b6a58 gui=none
hi markdownH5 guibg=#ebdbb2 guifg=#3b6a58 gui=none
hi markdownH5Delimiter guibg=#ebdbb2 guifg=#3b6a58 gui=none
hi markdownH6 guibg=#ebdbb2 guifg=#3b6a58 gui=none
hi markdownH6Delimiter guibg=#ebdbb2 guifg=#3b6a58 gui=none
hi markdownLinkText guibg=#ebdbb2 guifg=#909314 gui=none
hi markdownUrl guibg=#ebdbb2 guifg=#d26106 gui=none
hi mesonBuiltin guibg=#ebdbb2 guifg=#3b6a58 gui=none
hi texInputFile guibg=#ebdbb2 guifg=#909314 gui=none
hi tutorLink guibg=#ebdbb2 guifg=#3b6a58 gui=underline
hi tutorOK guibg=#ebdbb2 guifg=#909314 gui=bold
hi tutorX guibg=#ebdbb2 guifg=#D6461A gui=bold

let g:unicorn_bg = "#ebdbb2"
let g:unicorn_bg_2 = "#dbcca6"
let g:unicorn_blue = "#3b6a58"
let g:unicorn_fg = "#3f3f3f"
let g:unicorn_fg_2 = "#91876d"
let g:unicorn_green = "#909314"
let g:unicorn_grey = "#928374"
let g:unicorn_grey_2 = "#988d6f"
let g:unicorn_orange = "#d26106"
let g:unicorn_purple = "#9d6877"
let g:unicorn_red = "#D6461A"
let g:unicorn_tree_bg = "#dbcca7"
let g:unicorn_yellow = "#c5b256"

else
hi Boolean guibg=#191919 guifg=#d3869b gui=none
hi Character guibg=#191919 guifg=#719386 gui=none
hi ColorColumn guibg=#262626 guifg=#ebdbb2 gui=none
hi Comment guibg=#191919 guifg=#928374 gui=none
hi Constant guibg=#191919 guifg=#d3869b gui=none
hi CursorLine guibg=none guifg=none gui=none
hi CursorLineNr guibg=#262626 guifg=#719386 gui=none
hi DiagnosticError guibg=#191919 guifg=#D6461A gui=none
hi DiagnosticUnderline guibg=#191919 guifg=#ebdbb2 gui=underline guisp=#D6461A
hi DiagnosticUnderlineError guibg=#191919 guifg=#ebdbb2 gui=underline guisp=#D6461A
hi DiagnosticUnderlineHint guibg=#191919 guifg=#ebdbb2 gui=underline guisp=#d3869b
hi DiagnosticUnderlineInfo guibg=#191919 guifg=#ebdbb2 gui=underline guisp=#719386
hi DiagnosticUnderlineWarn guibg=#191919 guifg=#ebdbb2 gui=underline guisp=#f6d32d
hi DiffAdd guibg=#191919 guifg=#b8bb26 gui=none
hi DiffChange guibg=#191919 guifg=#719386 gui=none
hi DiffDelete guibg=#191919 guifg=#D6461A gui=none
hi DiffText guibg=#D6461A guifg=#ebdbb2 gui=none
hi Directory guibg=#191919 guifg=#719386 gui=none
hi EndOfBuffer guibg=none guifg=#719386 gui=none
hi Error guibg=#D6461A guifg=#ebdbb2 gui=none
hi ErrorMsg guibg=#D6461A guifg=#ebdbb2 gui=none
hi Float guibg=#191919 guifg=#D6461A gui=none
hi Folded guibg=#262626 guifg=#91876d gui=none
hi Identifier guibg=#191919 guifg=#ebdbb2 gui=none
hi LineNr guibg=#191919 guifg=#665b50 gui=none
hi LspDiagnosticsDefaultError guibg=#191919 guifg=#D6461A gui=none
hi LspDiagnosticsDefaultHint guibg=#191919 guifg=#d3869b gui=none
hi LspDiagnosticsDefaultInformation guibg=#191919 guifg=#719386 gui=none
hi LspDiagnosticsDefaultWarning guibg=#191919 guifg=#f6d32d gui=none
hi LspDiagnosticsError guibg=#191919 guifg=#D6461A gui=none
hi LspDiagnosticsHint guibg=#191919 guifg=#d3869b gui=none
hi LspDiagnosticsInformation guibg=#191919 guifg=#719386 gui=none
hi LspDiagnosticsUnderlineError guibg=#191919 guifg=#ebdbb2 gui=underline guisp=#D6461A
hi LspDiagnosticsUnderlineHint guibg=#191919 guifg=#ebdbb2 gui=underline guisp=#d3869b
hi LspDiagnosticsUnderlineInformation guibg=#191919 guifg=#ebdbb2 gui=underline guisp=#719386
hi LspDiagnosticsUnderlineWarning guibg=#191919 guifg=#ebdbb2 gui=underline guisp=#f6d32d
hi LspDiagnosticsWarning guibg=#191919 guifg=#f6d32d gui=none
hi MatchParen guibg=#262626 guifg=#fe8019 gui=bold
hi ModeMsg guibg=#191919 guifg=#d3869b gui=none
hi MoreMsg guibg=#191919 guifg=#719386 gui=none
hi NonText guibg=#191919 guifg=#b8bb26 gui=none
hi Normal guibg=#191919 guifg=#ebdbb2 gui=none
hi NormalFloat guibg=#262626 guifg=#719386 gui=none
hi Number guibg=#191919 guifg=#fe8019 gui=none
hi NvimInternalError guibg=#D6461A guifg=#191919 gui=none
hi NvimTreeFolderIcon guibg=#131313 guifg=#719386 gui=none
hi NvimTreeFolderName guibg=#131313 guifg=#719386 gui=none
hi NvimTreeGitDeleted guibg=#131313 guifg=#D6461A gui=none
hi NvimTreeGitDirty guibg=#131313 guifg=#fe8019 gui=none
hi NvimTreeGitNew guibg=#131313 guifg=#f6d32d gui=none
hi NvimTreeGitStaged guibg=#131313 guifg=#b8bb26 gui=none
hi NvimTreeImageFile guibg=#131313 guifg=#ebdbb2 gui=none
hi NvimTreeIndentMarker guibg=#131313 guifg=#262626 gui=none
hi NvimTreeNormal guibg=#131313 guifg=#ebdbb2 gui=none
hi NvimTreeOpenedFolderName guibg=#131313 guifg=#719386 gui=none
hi NvimTreeRootFolder guibg=#131313 guifg=#665b50 gui=none
hi NvimTreeSpecialFile guibg=#131313 guifg=#b8bb26 gui=none
hi Pmenu guibg=#262626 guifg=#719386 gui=none
hi PmenuSel guibg=#91876d guifg=#191919 gui=none
hi PreProc guibg=#191919 guifg=#719386 gui=none
hi Question guibg=#191919 guifg=#719386 gui=none
hi RedrawDebugClear guibg=#f6d32d guifg=#191919 gui=none
hi RedrawDebugComposed guibg=#b8bb26 guifg=#191919 gui=none
hi RedrawDebugRecompose guibg=#D6461A guifg=#ebdbb2 gui=none
hi Search guibg=#f6d32d guifg=#191919 gui=none
hi SignColumn guibg=#191919 guifg=#ebdbb2 gui=none
hi Special guibg=#191919 guifg=#d3869b gui=none
hi SpecialKey guibg=#191919 guifg=#f6d32d gui=none
hi SpellBad guibg=#191919 guifg=none gui=undercurl guisp=#fe8019
hi SpellCap guibg=#191919 guifg=none gui=undercurl guisp=#719386
hi SpellLocal guibg=#191919 guifg=none gui=undercurl guisp=#f6d32d
hi SpellRare guibg=#191919 guifg=none gui=undercurl guisp=#d3869b
hi Statement guibg=#191919 guifg=#719386 gui=none
hi StatusLine guibg=#262626 guifg=#ebdbb2 gui=none
hi StatusLineNC guibg=#262626 guifg=#91876d gui=none
hi String guibg=#191919 guifg=#b8bb26 gui=none
hi TelescopeBorder guibg=#191919 guifg=#719386 gui=none
hi Title guibg=#191919 guifg=#d3869b gui=none
hi Todo guibg=#262626 guifg=#fe8019 gui=bold
hi Type guibg=#191919 guifg=#719386 gui=none
hi Underlined guibg=#191919 guifg=#719386 gui=underline
hi VertSplit guibg=#191919 guifg=#665b50 gui=none
hi Visual guibg=#719386 guifg=#191919 gui=none
hi WarningMsg guibg=#191919 guifg=#D6461A gui=none
hi dartIdentifier guibg=#191919 guifg=#719386 gui=none
hi makeTarget guibg=#191919 guifg=#b8bb26 gui=none
hi markdownCode guibg=#191919 guifg=#91876d gui=none
hi markdownCodeDelimiter guibg=#191919 guifg=#d3869b gui=none
hi markdownH1 guibg=#191919 guifg=#719386 gui=none
hi markdownH1Delimiter guibg=#191919 guifg=#719386 gui=none
hi markdownH2 guibg=#191919 guifg=#719386 gui=none
hi markdownH2Delimiter guibg=#191919 guifg=#719386 gui=none
hi markdownH3 guibg=#191919 guifg=#719386 gui=none
hi markdownH3Delimiter guibg=#191919 guifg=#719386 gui=none
hi markdownH4 guibg=#191919 guifg=#719386 gui=none
hi markdownH4Delimiter guibg=#191919 guifg=#719386 gui=none
hi markdownH5 guibg=#191919 guifg=#719386 gui=none
hi markdownH5Delimiter guibg=#191919 guifg=#719386 gui=none
hi markdownH6 guibg=#191919 guifg=#719386 gui=none
hi markdownH6Delimiter guibg=#191919 guifg=#719386 gui=none
hi markdownLinkText guibg=#191919 guifg=#b8bb26 gui=none
hi markdownUrl guibg=#191919 guifg=#fe8019 gui=none
hi mesonBuiltin guibg=#191919 guifg=#719386 gui=none
hi texInputFile guibg=#191919 guifg=#b8bb26 gui=none
hi tutorLink guibg=#191919 guifg=#719386 gui=underline
hi tutorOK guibg=#191919 guifg=#b8bb26 gui=bold
hi tutorX guibg=#191919 guifg=#D6461A gui=bold

let g:unicorn_bg = "#191919"
let g:unicorn_bg_2 = "#262626"
let g:unicorn_blue = "#719386"
let g:unicorn_fg = "#ebdbb2"
let g:unicorn_fg_2 = "#91876d"
let g:unicorn_green = "#b8bb26"
let g:unicorn_grey = "#928374"
let g:unicorn_grey_2 = "#665b50"
let g:unicorn_orange = "#fe8019"
let g:unicorn_purple = "#d3869b"
let g:unicorn_red = "#D6461A"
let g:unicorn_tree_bg = "#131313"
let g:unicorn_yellow = "#f6d32d"

endif
