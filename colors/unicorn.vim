" Script for showing all color groups
" :so $VIMRUNTIME/syntax/hitest.vim

if !has("gui_running") && &t_Co < 256
    finish
endif

set background=dark

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "unicorn"

let s:none = "NONE"

" Colors {{{
    let g:unicorn_white = "#ebdbb2"
    let g:unicorn_black = "#191919"
    let g:unicorn_green = "#b8bb26"
    "let g:unicorn_blue = "#83a598"
    let g:unicorn_blue = "#719386"
    let g:unicorn_grey = "#928374"
    let g:unicorn_red = "#D6461A"
    let g:unicorn_purple = "#d3869b"
    let g:unicorn_orange = "#fe8019"
    let g:unicorn_yellow = "#f6d32d"

    " Helpers
    let g:unicorn_black_light = "#262626"
    let g:unicorn_dark_grey = "#665b50"
    let g:unicorn_white_dark = "#91876d"
" }}}

" Dark colors {{{
    let s:dark_bg = g:unicorn_black
    let s:dark_fg = g:unicorn_white
    let s:dark_colors = #{
                \Normal: #{},
                \SpecialKey: #{guifg: g:unicorn_yellow},
                \LineNr: #{guifg: g:unicorn_dark_grey},
                \EndOfBuffer: #{guifg: g:unicorn_blue},
                \CursorLine: #{guifg: s:none},
                \CursorLineNr: #{guibg: g:unicorn_black_light, guifg: g:unicorn_blue},
                \ColorColumn: #{guibg: g:unicorn_black_light},
                \Todo: #{guibg: g:unicorn_black_light, guifg: g:unicorn_orange, gui: "bold"},
                \NonText: #{guifg: g:unicorn_green},
                \Visual: #{guibg: g:unicorn_blue, guifg: g:unicorn_black},
                \SpellBad: #{gui: "undercurl", guisp: g:unicorn_orange, guifg: s:none},
                \SpellCap: #{gui: "undercurl", guisp: g:unicorn_blue, guifg: s:none},
                \SpellRare: #{gui: "undercurl", guisp: g:unicorn_purple, guifg: s:none},
                \SpellLocal: #{gui: "undercurl", guisp: g:unicorn_yellow, guifg: s:none},
                \StatusLine: #{guibg: g:unicorn_black_light, guifg: g:unicorn_white},
                \StatusLineNC: #{guibg: g:unicorn_black_light, guifg: g:unicorn_white_dark},
                \ModeMsg: #{guifg: g:unicorn_purple},
                \MoreMsg: #{guifg: g:unicorn_blue},
                \VertSplit: #{guifg: g:unicorn_dark_grey},
                \MatchParen: #{gui: "bold", guibg: g:unicorn_black_light, guifg: g:unicorn_orange},
                \NvimInternalError: #{guibg: g:unicorn_red, guifg: g:unicorn_black},
                \Error: #{guibg: g:unicorn_red, guifg: g:unicorn_white},
                \ErrorMsg: #{guibg: g:unicorn_red, guifg: g:unicorn_white},
                \RedrawDebugRecompose: #{guibg: g:unicorn_red, guifg: g:unicorn_white},
                \RedrawDebugComposed: #{guibg: g:unicorn_green, guifg: g:unicorn_black},
                \RedrawDebugClear: #{guibg: g:unicorn_yellow, guifg: g:unicorn_black},
                \DiffText: #{guibg: g:unicorn_red, guifg: g:unicorn_white},
                \WarningMsg: #{guifg: g:unicorn_red},
                \Search: #{guibg: g:unicorn_yellow, guifg: g:unicorn_black},
                \Folded: #{guibg: g:unicorn_black_light, guifg: g:unicorn_white_dark},
                \Question: #{guifg: g:unicorn_blue},
                \NormalFloat: #{guibg: g:unicorn_black_light, guifg: g:unicorn_blue},
                \Pmenu: #{guibg: g:unicorn_black_light, guifg: g:unicorn_blue},
                \PmenuSel: #{guibg: g:unicorn_white_dark, guifg: g:unicorn_black},
                \SignColumn: #{},
                \
                \Comment: #{guifg: g:unicorn_grey},
                \Constant: #{guifg: g:unicorn_purple},
                \String: #{guifg: g:unicorn_green},
                \Character: #{guifg: g:unicorn_blue},
                \Number: #{guifg: g:unicorn_orange},
                \Boolean: #{guifg: g:unicorn_purple},
                \Float: #{guifg: g:unicorn_red},
                \Identifier: #{},
                \Statement: #{guifg: g:unicorn_blue},
                \PreProc: #{guifg: g:unicorn_blue},
                \Type: #{guifg: g:unicorn_blue},
                \Special: #{guifg: g:unicorn_purple},
                \Title: #{guifg: g:unicorn_purple},
                \
                \markdownH1: #{guifg: g:unicorn_blue},
                \markdownH2: #{guifg: g:unicorn_blue},
                \markdownH3: #{guifg: g:unicorn_blue},
                \markdownH4: #{guifg: g:unicorn_blue},
                \markdownH5: #{guifg: g:unicorn_blue},
                \markdownH6: #{guifg: g:unicorn_blue},
                \markdownH1Delimiter: #{guifg: g:unicorn_blue},
                \markdownH2Delimiter: #{guifg: g:unicorn_blue},
                \markdownH3Delimiter: #{guifg: g:unicorn_blue},
                \markdownH4Delimiter: #{guifg: g:unicorn_blue},
                \markdownH5Delimiter: #{guifg: g:unicorn_blue},
                \markdownH6Delimiter: #{guifg: g:unicorn_blue},
                \markdownLinkText: #{guifg: g:unicorn_green},
                \markdownUrl: #{guifg: g:unicorn_orange},
                \markdownCodeDelimiter: #{guifg: g:unicorn_purple},
                \markdownCode: #{guifg: g:unicorn_white_dark},
                \
                \mesonBuiltin: #{guifg: g:unicorn_blue},
                \makeTarget: #{guifg: g:unicorn_green},
                \
                \texInputFile: #{guifg: g:unicorn_green},
                \
                \TelescopeBorder: #{guifg: g:unicorn_blue},
                \
                \Directory: #{guifg: g:unicorn_blue},
                \NvimTreeNormal: #{guifg: g:unicorn_white},
                \NvimTreeFolderName: #{guifg: g:unicorn_blue},
                \NvimTreeOpenedFolderName: #{guifg: g:unicorn_blue},
                \NvimTreeIndentMarker: #{guifg: g:unicorn_black_light},
                \NvimTreeFolderIcon: #{guifg: g:unicorn_blue},
                \NvimTreeRootFolder: #{guifg: g:unicorn_dark_grey},
                \NvimTreeSpecialFile: #{guifg: g:unicorn_green},
                \NvimTreeImageFile: #{},
                \NvimTreeGitDirty: #{guifg: g:unicorn_orange},
                \NvimTreeGitNew: #{guifg: g:unicorn_yellow},
                \NvimTreeGitStaged: #{guifg: g:unicorn_green},
                \NvimTreeGitDeleted: #{guifg: g:unicorn_red},
                \
                \LspDiagnosticsError: #{guifg: g:unicorn_red},
                \LspDiagnosticsWarning: #{guifg: g:unicorn_yellow},
                \LspDiagnosticsInformation: #{guifg: g:unicorn_blue},
                \LspDiagnosticsHint: #{guifg: g:unicorn_purple},
                \LspDiagnosticsDefaultError: #{guifg: g:unicorn_red},
                \LspDiagnosticsDefaultWarning: #{guifg: g:unicorn_yellow},
                \LspDiagnosticsDefaultInformation: #{guifg: g:unicorn_blue},
                \LspDiagnosticsDefaultHint: #{guifg: g:unicorn_purple},
                \LspDiagnosticsUnderlineError: #{guisp: g:unicorn_red, gui: "underline"},
                \LspDiagnosticsUnderlineWarning: #{guisp: g:unicorn_yellow, gui: "underline"},
                \LspDiagnosticsUnderlineInformation: #{guisp: g:unicorn_blue, gui: "underline"},
                \LspDiagnosticsUnderlineHint: #{guisp: g:unicorn_purple, gui: "underline"},
                \DiagnosticUnderlineError: #{guisp: g:unicorn_red, gui: "underline"},
                \DiagnosticUnderlineWarn: #{guisp: g:unicorn_yellow, gui: "underline"},
                \DiagnosticUnderlineInfo: #{guisp: g:unicorn_blue, gui: "underline"},
                \DiagnosticUnderlineHint: #{guisp: g:unicorn_purple, gui: "underline"},
                \DiagnosticError: #{guifg: g:unicorn_red},
                \DiagnosticUnderline: #{guisp: g:unicorn_red, gui: "underline"},
                \
                \DiffAdd: #{guifg: g:unicorn_green, guibg: g:unicorn_black},
                \DiffChange: #{guifg: g:unicorn_blue, guibg: g:unicorn_black},
                \DiffDelete: #{guifg: g:unicorn_red, guibg: g:unicorn_black},
                \}
" }}}

" Setup highlights, designed that light scheme could be added easily
function! UnicornSetup()
    let l:colors = s:dark_colors
    let l:bg = s:dark_bg
    let l:fg = s:dark_fg

    let l:cmd = ""

    for [hl_group, hl_args] in items(l:colors)
        let l:cmd = "hi " .. hl_group
        
        " Defaults if not exist
        if !has_key(hl_args, "guibg") | let hl_args["guibg"] = l:bg | endif
        if !has_key(hl_args, "guifg") | let hl_args["guifg"] = l:fg | endif
        if !has_key(hl_args, "gui") | let hl_args["gui"] = s:none | endif

        for [key, val] in items(hl_args)
            let l:cmd = l:cmd .. " " .. key .. "=" .. val
        endfor
        "echom l:cmd
        exe l:cmd
        let l:cmd = ""
    endfor
endfunction

call UnicornSetup()
