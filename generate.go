package main

import (
	"log"
	"os"
    "fmt"
)

const (
    white = "#ebdbb2"
    black = "#191919"
    green = "#b8bb26"
    blue = "#719386"
    grey = "#928374"
    red = "#D6461A"
    purple = "#d3869b"
    orange = "#fe8019"
    yellow = "#f6d32d"
    black_light = "#262626"
    dark_grey = "#665b50"
    white_dark = "#91876d"
    tree_bg = "#131313"

    undercurl = "undercurl"
    underline = "underline"
    none = "none"
    bold = "bold"
)

type Highlight struct {
    fg string
    bg string
    gui string
    sp string
}

func (hl Highlight) Fg(def string) string {
    if len(hl.fg) > 0 {
        return hl.fg
    }
    return def
}

func (hl Highlight) Bg(def string) string {
    if len(hl.bg) > 0 {
        return hl.bg
    }
    return def
}

func (hl Highlight) Gui(def string) string {
    if len(hl.gui) > 0 {
        return hl.gui
    }
    return def
}

func (hl Highlight) HasSp() bool {
    return len(hl.sp) > 0
}

// How they are accessible externally (with "g:unicorn_" prefix)
var color_strings = map[string]string{
    "white": white,
    "black": black,
    "green": green,
    "blue": blue,
    "grey": grey,
    "red": red,
    "purple": purple,
    "orange": orange,
    "yellow": yellow,
    "black_light": black_light,
    "dark_grey": dark_grey,
    "white_dark": white_dark,
    "tree_bg": tree_bg,
}

var dark_bg = black
var dark_fg = white
var dark_colors = map[string]Highlight{
    "Normal": {},
    "SpecialKey": {fg: yellow},
    "LineNr": {fg: dark_grey},
    "EndOfBuffer": {fg: blue, bg: none},
    "CursorLine": {fg: none, bg: none},
    "CursorLineNr": {bg: black_light, fg: blue},
    "ColorColumn": {bg: black_light},
    "Todo": {bg: black_light, fg: orange, gui: bold},
    "NonText": {fg: green},
    "Visual": {bg: blue, fg: black},
    "SpellBad": {gui: undercurl, sp: orange, fg: none},
    "SpellCap": {gui: undercurl, sp: blue, fg: none},
    "SpellRare": {gui: undercurl, sp: purple, fg: none},
    "SpellLocal": {gui: undercurl, sp: yellow, fg: none},
    "StatusLine": {bg: black_light, fg: white},
    "StatusLineNC": {bg: black_light, fg: white_dark},
    "ModeMsg": {fg: purple},
    "MoreMsg": {fg: blue},
    "VertSplit": {fg: dark_grey},
    "MatchParen": {gui: bold, bg: black_light, fg: orange},
    "NvimInternalError": {bg: red, fg: black},
    "Error": {bg: red, fg: white},
    "ErrorMsg": {bg: red, fg: white},
    "RedrawDebugRecompose": {bg: red, fg: white},
    "RedrawDebugComposed": {bg: green, fg: black},
    "RedrawDebugClear": {bg: yellow, fg: black},
    "DiffText": {bg: red, fg: white},
    "WarningMsg": {fg: red},
    "Search": {bg: yellow, fg: black},
    "Folded": {bg: black_light, fg: white_dark},
    "Question": {fg: blue},
    "NormalFloat": {bg: black_light, fg: blue},
    "Pmenu": {bg: black_light, fg: blue},
    "PmenuSel": {bg: white_dark, fg: black},
    "SignColumn": {},
    "Comment": {fg: grey},
    "Constant": {fg: purple},
    "String": {fg: green},
    "Character": {fg: blue},
    "Number": {fg: orange},
    "Boolean": {fg: purple},
    "Float": {fg: red},
    "Identifier": {},
    "Statement": {fg: blue},
    "PreProc": {fg: blue},
    "Type": {fg: blue},
    "Special": {fg: purple},
    "Title": {fg: purple},
    "markdownH1": {fg: blue},
    "markdownH2": {fg: blue},
    "markdownH3": {fg: blue},
    "markdownH4": {fg: blue},
    "markdownH5": {fg: blue},
    "markdownH6": {fg: blue},
    "markdownH1Delimiter": {fg: blue},
    "markdownH2Delimiter": {fg: blue},
    "markdownH3Delimiter": {fg: blue},
    "markdownH4Delimiter": {fg: blue},
    "markdownH5Delimiter": {fg: blue},
    "markdownH6Delimiter": {fg: blue},
    "markdownLinkText": {fg: green},
    "markdownUrl": {fg: orange},
    "markdownCodeDelimiter": {fg: purple},
    "markdownCode": {fg: white_dark},
    "mesonBuiltin": {fg: blue},
    "makeTarget": {fg: green},
    "texInputFile": {fg: green},
    "TelescopeBorder": {fg: blue},
    "Directory": {fg: blue},
    "NvimTreeNormal": {fg: white, bg: tree_bg},
    "NvimTreeFolderName": {fg: blue, bg: tree_bg},
    "NvimTreeOpenedFolderName": {fg: blue, bg: tree_bg},
    "NvimTreeIndentMarker": {fg: black_light, bg: tree_bg},
    "NvimTreeFolderIcon": {fg: blue, bg: tree_bg},
    "NvimTreeRootFolder": {fg: dark_grey, bg: tree_bg},
    "NvimTreeSpecialFile": {fg: green, bg: tree_bg},
    "NvimTreeImageFile": {bg: tree_bg},
    "NvimTreeGitDirty": {fg: orange, bg: tree_bg},
    "NvimTreeGitNew": {fg: yellow, bg: tree_bg},
    "NvimTreeGitStaged": {fg: green, bg: tree_bg},
    "NvimTreeGitDeleted": {fg: red, bg: tree_bg},
    "LspDiagnosticsError": {fg: red},
    "LspDiagnosticsWarning": {fg: yellow},
    "LspDiagnosticsInformation": {fg: blue},
    "LspDiagnosticsHint": {fg: purple},
    "LspDiagnosticsDefaultError": {fg: red},
    "LspDiagnosticsDefaultWarning": {fg: yellow},
    "LspDiagnosticsDefaultInformation": {fg: blue},
    "LspDiagnosticsDefaultHint": {fg: purple},
    "LspDiagnosticsUnderlineError": {sp: red, gui: underline},
    "LspDiagnosticsUnderlineWarning": {sp: yellow, gui: underline},
    "LspDiagnosticsUnderlineInformation": {sp: blue, gui: underline},
    "LspDiagnosticsUnderlineHint": {sp: purple, gui: underline},
    "DiagnosticUnderlineError": {sp: red, gui: underline},
    "DiagnosticUnderlineWarn": {sp: yellow, gui: underline},
    "DiagnosticUnderlineInfo": {sp: blue, gui: underline},
    "DiagnosticUnderlineHint": {sp: purple, gui: underline},
    "DiagnosticError": {fg: red},
    "DiagnosticUnderline": {sp: red, gui: underline},
    "DiffAdd": {fg: green, bg: black},
    "DiffChange": {fg: blue, bg: black},
    "DiffDelete": {fg: red, bg: black},
    "Underlined": {fg: blue, gui: underline},
    "tutorLink": {fg: blue, gui: underline},
    "tutorOK": {fg: green, gui: bold},
    "tutorX": {fg: red, gui: bold},
    "dartIdentifier": {fg: blue},
}

func main() {
    if len(os.Args) != 2 {
        log.Fatal("no output file given");
        os.Exit(1);
    }
    
    f, err := os.Create(os.Args[1])
    if err != nil {
        log.Fatal(err)
    }
    defer f.Close()
    
    // Write header
    f.WriteString(`" Unicorn syntax theme (https://github.com/mbndr/unicorn_syntax)
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

`)

    // Write highlights
    for key, hl := range dark_colors {
        f.WriteString(fmt.Sprintf("hi %s guibg=%s guifg=%s", key, hl.Bg(dark_bg), hl.Fg(dark_fg)))
        f.WriteString(fmt.Sprintf(" gui=%s", hl.Gui(none)))
        if hl.HasSp() {
            f.WriteString(fmt.Sprintf(" guisp=%s", hl.sp))
        }
        f.WriteString("\n")
    }
    f.WriteString("\n")

    // Write color variables for external use
    for name, color := range color_strings {
        f.WriteString(fmt.Sprintf("let g:unicorn_%s = \"%s\"\n", name, color))
    }
}
