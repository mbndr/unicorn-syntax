if !has("gui_running") && &t_Co < 256
    finish
endif

set background=dark

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "unicorn"

" Basic colors
let fg = "#ebdbb2"
let bg = "#191919"
let green = "#b8bb26"
let blue = "#83a598"
let grey = "#928374"
let red = "#D6461A"
let purple = "#d3869b"
let orange = "#fe8019"

" Helper colors
let bg_light = "#262626"
let dark_grey = "#665b50"
let fg_dark = "#91876d"

" GENERAL UI
execute "hi LineNr guibg=" . bg . " guifg=" . dark_grey . " gui=NONE"
execute "hi Normal guibg=" . bg . " guifg=" . fg . " gui=NONE"
execute "hi EndOfBuffer guibg=" . bg . " guifg=" . blue . " gui=NONE"
execute "hi CursorLine guibg=" . bg . " gui=NONE"
execute "hi CursorLineNr guibg=" . bg_light . " guifg=" . orange . " gui=NONE"
execute "hi ColorColumn guibg=" . bg_light
execute "hi StatusLine guibg=" . fg_dark . " guifg=" . bg . " gui=NONE"
execute "hi StatusLineNC guibg=" . bg_light . " guifg=" . fg . " gui=NONE"
execute "hi Todo guibg=" . bg_light . " guifg=" . orange . " gui=bold"
execute "hi NonText guibg=" . bg . " guifg=" . green . " gui=NONE"
execute "hi Visual guibg=" . blue . " guifg=" . bg . " gui=NONE"
execute "hi SpellBad gui=undercurl guisp=" . red 
execute "hi VertSplit gui=NONE guibg=" . bg . " guifg=" . dark_grey
execute "hi ModeMsg gui=NONE guibg=" . bg . " guifg=" . purple
execute "hi MatchParen gui=bold guibg=" . bg_light . " guifg=" . orange
" MENU
execute "hi NormalFloat guibg=" . bg_light . " guifg=" . blue . " gui=NONE"
execute "hi Pmenu guibg=" . bg_light . " guifg=" . blue . " gui=NONE"
execute "hi PmenuSel guibg=" . fg_dark . " guifg=" . bg . " gui=NONE"
execute "hi SignColumn guibg=" . bg . " guifg=" . fg . " gui=NONE"


" GENERAL SYNTAX
execute "hi Comment guibg=" . bg . " guifg=" . grey . " gui=NONE"

execute "hi Constant guibg=" . bg . " guifg=" . purple . " gui=NONE"
execute "hi String guibg=" . bg . " guifg=" . green . " gui=NONE"
execute "hi Character guibg=" . bg . " guifg=" . blue . " gui=NONE"
execute "hi Number guibg=" . bg . " guifg=" . orange . " gui=NONE"
execute "hi Boolean guibg=" . bg . " guifg=" . purple . " gui=NONE"
execute "hi Float guibg=" . bg . " guifg=" . orange . " gui=NONE"

execute "hi Identifier guibg=" . bg . " guifg=" . fg . " gui=NONE"
" ... others inherit ...

execute "hi Statement guibg=" . bg . " guifg=" . blue . " gui=NONE"
" ... others inherit ...

execute "hi PreProc guibg=" . bg . " guifg=" . blue . " gui=NONE"
" ... others inherit ...

execute "hi Type guibg=" . bg . " guifg=" . blue . " gui=NONE"
" ... others inherit ...

execute "hi Special guibg=" . bg . " guifg=" . purple . " gui=NONE"
" ... others inherit ...

" MARKDOWN
execute "hi markdownH1 guibg=" . bg . " guifg=" . blue . " gui=NONE"
execute "hi markdownH2 guibg=" . bg . " guifg=" . blue . " gui=NONE"
execute "hi markdownH3 guibg=" . bg . " guifg=" . blue . " gui=NONE"
execute "hi markdownH4 guibg=" . bg . " guifg=" . blue . " gui=NONE"
execute "hi markdownH5 guibg=" . bg . " guifg=" . blue . " gui=NONE"
execute "hi markdownH6 guibg=" . bg . " guifg=" . blue . " gui=NONE"
execute "hi markdownH1Delimiter guibg=" . bg . " guifg=" . blue . " gui=NONE"
execute "hi markdownH2Delimiter guibg=" . bg . " guifg=" . blue . " gui=NONE"
execute "hi markdownH3Delimiter guibg=" . bg . " guifg=" . blue . " gui=NONE"
execute "hi markdownH4Delimiter guibg=" . bg . " guifg=" . blue . " gui=NONE"
execute "hi markdownH5Delimiter guibg=" . bg . " guifg=" . blue . " gui=NONE"
execute "hi markdownH6Delimiter guibg=" . bg . " guifg=" . blue . " gui=NONE"
execute "hi markdownLinkText guibg=" . bg . " guifg=" . green . " gui=NONE"
execute "hi markdownUrl guibg=" . bg . " guifg=" . orange . " gui=NONE"
execute "hi markdownCodeDelimiter guibg=" . bg . " guifg=" . purple . " gui=NONE"
execute "hi markdownCode guibg=" . bg_light . " guifg=" . fg . " gui=NONE"

" MESON and MAKE
execute "hi mesonBuiltin guibg=" . bg . " guifg=" . blue . " gui=NONE"
execute "hi makeTarget guibg=" . bg . " guifg=" . green . " gui=NONE"


" TELESCOPE
execute "hi TelescopeBorder guibg=" . bg . " guifg= " blue . " gui=NONE"

" NVIMTREE
execute "hi Directory guifg=" . blue 
execute "hi NvimTreeNormal guifg=" . fg 
execute "hi NvimTreeFolderName guifg=" . blue 
execute "hi NvimTreeOpenedFolderName guifg=" . blue 
" TODO: this does not work
execute "hi NvimTreeOpenedFile guibg=" . bg_light 
execute "hi NvimTreeIndentMarker guifg=" . bg_light
execute "hi NvimTreeFolderIcon guifg=" . blue 
execute "hi NvimTreeRootFolder guifg=" . dark_grey 
execute "hi NvimTreeSpecialFile guifg=" . green 
execute "hi NvimTreeImageFile guifg=" . fg . " gui=NONE"
execute "hi NvimTreeGitDirty guifg=" . orange
execute "hi NvimTreeGitNew guifg=" . green
execute "hi NvimTreeGitStaged guifg=" . green 
execute "hi NvimTreeGitNew guifg=" . purple 
execute "hi NvimTreeExecFile guifg=" . fg . " gui=NONE"

execute "hi LspDiagnosticsError guifg=" . red . " gui=NONE"
execute "hi LspDiagnosticsWarning guifg=" . orange . " gui=NONE"
execute "hi LspDiagnosticsInformation guifg=" . blue . " gui=NONE"
execute "hi LspDiagnosticsHint guifg=" . purple . " gui=NONE"
execute "hi LspDiagnosticsDefaultError guifg=" . red . " gui=NONE"
execute "hi LspDiagnosticsDefaultWarning guifg=" . orange . " gui=NONE"
execute "hi LspDiagnosticsDefaultInformation guifg=" . blue . " gui=NONE"
execute "hi LspDiagnosticsDefaultHint guifg=" . purple . " gui=NONE"
execute "hi LspDiagnosticsUnderlineError gui=underline guisp=" . red
execute "hi LspDiagnosticsUnderlineWarning gui=underline guisp=" . orange
execute "hi LspDiagnosticsUnderlineInformation gui=underline guisp=" . blue
execute "hi LspDiagnosticsUnderlineHint gui=underline guisp=" . purple

