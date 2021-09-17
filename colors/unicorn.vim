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
let dark_grey = "#665b50"
let red = "#D6461A"
let purple = "#d3869b"
let orange = "#fe8019"

" Helper colors
let bg_light = "#262626"

" GENERAL
execute "hi LineNr guibg=" . bg . " guifg=" . dark_grey . " gui=NONE"
execute "hi Normal guibg=" . bg . " guifg=" . fg . " gui=NONE"
execute "hi EndOfBuffer guibg=" . bg . " guifg=" . blue . " gui=NONE"

" GENERAL
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

" MESON
execute "hi mesonBuiltin guibg=" . bg . " guifg=" . blue . " gui=NONE"