package main

import (
	"fmt"
	"log"
	"os"
	"sort"
)

const (
    undercurl = "undercurl"
    underline = "underline"
    none = "none"
    bold = "bold"
)

// Highlight is a single highlight
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

// Highlight for both color schemes
func GetHighlights(colors map[string]string) map[string]Highlight {
    c := func(n string) string {
        return colors[n]
    }

    return map[string]Highlight{
        "Normal": {},
        "SpecialKey": {fg: c("yellow")},
        "LineNr": {fg: c("grey_2")},
        "EndOfBuffer": {fg: c("blue"), bg: none},
        "CursorLine": {fg: none, bg: none},
        "CursorLineNr": {bg: c("bg_2"), fg: c("blue")},
        "ColorColumn": {bg: c("bg_2")},
        "Todo": {bg: c("bg_2"), fg: c("orange"), gui: bold},
        "NonText": {fg: c("green")},
        "Visual": {bg: c("blue"), fg: c("bg")},
        "SpellBad": {gui: undercurl, sp: c("orange"), fg: none},
        "SpellCap": {gui: undercurl, sp: c("blue"), fg: none},
        "SpellRare": {gui: undercurl, sp: c("purple"), fg: none},
        "SpellLocal": {gui: undercurl, sp: c("yellow"), fg: none},
        "StatusLine": {bg: c("bg_2"), fg: c("fg")},
        "StatusLineNC": {bg: c("bg_2"), fg: c("fg_2")},
        "ModeMsg": {fg: c("purple")},
        "MoreMsg": {fg: c("blue")},
        "VertSplit": {fg: c("grey_2")},
        "MatchParen": {gui: bold, bg: c("bg_2"), fg: c("orange")},
        "NvimInternalError": {bg: c("red"), fg: c("bg")},
        "Error": {bg: c("red"), fg: c("fg")},
        "ErrorMsg": {bg: c("red"), fg: c("fg")},
        "RedrawDebugRecompose": {bg: c("red"), fg: c("fg")},
        "RedrawDebugComposed": {bg: c("green"), fg: c("bg")},
        "RedrawDebugClear": {bg: c("yellow"), fg: c("bg")},
        "DiffText": {bg: c("red"), fg: c("fg")},
        "WarningMsg": {fg: c("red")},
        "Search": {bg: c("yellow"), fg: c("bg")},
        "Folded": {bg: c("bg_2"), fg: c("fg_2")},
        "Question": {fg: c("blue")},
        "NormalFloat": {bg: c("bg_2"), fg: c("blue")},
        "Pmenu": {bg: c("bg_2"), fg: c("blue")},
        "PmenuSel": {bg: c("fg_2"), fg: c("bg")},
        "SignColumn": {},
        "Comment": {fg: c("grey")},
        "Constant": {fg: c("purple")},
        "String": {fg: c("green")},
        "Character": {fg: c("blue")},
        "Number": {fg: c("orange")},
        "Boolean": {fg: c("purple")},
        "Float": {fg: c("red")},
        "Identifier": {},
        "Statement": {fg: c("blue")},
        "PreProc": {fg: c("blue")},
        "Type": {fg: c("blue")},
        "Special": {fg: c("purple")},
        "Title": {fg: c("purple")},
        "markdownH1": {fg: c("blue")},
        "markdownH2": {fg: c("blue")},
        "markdownH3": {fg: c("blue")},
        "markdownH4": {fg: c("blue")},
        "markdownH5": {fg: c("blue")},
        "markdownH6": {fg: c("blue")},
        "markdownH1Delimiter": {fg: c("blue")},
        "markdownH2Delimiter": {fg: c("blue")},
        "markdownH3Delimiter": {fg: c("blue")},
        "markdownH4Delimiter": {fg: c("blue")},
        "markdownH5Delimiter": {fg: c("blue")},
        "markdownH6Delimiter": {fg: c("blue")},
        "markdownLinkText": {fg: c("green")},
        "markdownUrl": {fg: c("orange")},
        "markdownCodeDelimiter": {fg: c("purple")},
        "markdownCode": {fg: c("fg_2")},
        "mesonBuiltin": {fg: c("blue")},
        "makeTarget": {fg: c("green")},
        "texInputFile": {fg: c("green")},
        "TelescopeBorder": {fg: c("blue")},
        "Directory": {fg: c("blue")},
        "NvimTreeNormal": {fg: c("fg"), bg: c("tree_bg")},
        "NvimTreeFolderName": {fg: c("blue"), bg: c("tree_bg")},
        "NvimTreeOpenedFolderName": {fg: c("blue"), bg: c("tree_bg")},
        "NvimTreeIndentMarker": {fg: c("bg_2"), bg: c("tree_bg")},
        "NvimTreeFolderIcon": {fg: c("blue"), bg: c("tree_bg")},
        "NvimTreeRootFolder": {fg: c("grey_2"), bg: c("tree_bg")},
        "NvimTreeSpecialFile": {fg: c("green"), bg: c("tree_bg")},
        "NvimTreeImageFile": {bg: c("tree_bg")},
        "NvimTreeGitDirty": {fg: c("orange"), bg: c("tree_bg")},
        "NvimTreeGitNew": {fg: c("yellow"), bg: c("tree_bg")},
        "NvimTreeGitStaged": {fg: c("green"), bg: c("tree_bg")},
        "NvimTreeGitDeleted": {fg: c("red"), bg: c("tree_bg")},
        "LspDiagnosticsError": {fg: c("red")},
        "LspDiagnosticsWarning": {fg: c("yellow")},
        "LspDiagnosticsInformation": {fg: c("blue")},
        "LspDiagnosticsHint": {fg: c("purple")},
        "LspDiagnosticsDefaultError": {fg: c("red")},
        "LspDiagnosticsDefaultWarning": {fg: c("yellow")},
        "LspDiagnosticsDefaultInformation": {fg: c("blue")},
        "LspDiagnosticsDefaultHint": {fg: c("purple")},
        "LspDiagnosticsUnderlineError": {sp: c("red"), gui: underline},
        "LspDiagnosticsUnderlineWarning": {sp: c("yellow"), gui: underline},
        "LspDiagnosticsUnderlineInformation": {sp: c("blue"), gui: underline},
        "LspDiagnosticsUnderlineHint": {sp: c("purple"), gui: underline},
        "DiagnosticUnderlineError": {sp: c("red"), gui: underline},
        "DiagnosticUnderlineWarn": {sp: c("yellow"), gui: underline},
        "DiagnosticUnderlineInfo": {sp: c("blue"), gui: underline},
        "DiagnosticUnderlineHint": {sp: c("purple"), gui: underline},
        "DiagnosticError": {fg: c("red")},
        "DiagnosticUnderline": {sp: c("red"), gui: underline},
        "DiffAdd": {fg: c("green"), bg: c("bg")},
        "DiffChange": {fg: c("blue"), bg: c("bg")},
        "DiffDelete": {fg: c("red"), bg: c("bg")},
        "Underlined": {fg: c("blue"), gui: underline},
        "tutorLink": {fg: c("blue"), gui: underline},
        "tutorOK": {fg: c("green"), gui: bold},
        "tutorX": {fg: c("red"), gui: bold},
        "dartIdentifier": {fg: c("blue")},
    }
}

func WriteHighlights(f *os.File, highlights map[string]Highlight, colors map[string]string, defBg string, defFg string) {
    // Sort highlights alphabetically
    hlKeys := make([]string, 0, len(highlights))
    for k := range highlights {
        hlKeys = append(hlKeys, k)
    }
    sort.Strings(hlKeys)

    // Write highlights
    var hl Highlight
    for _, key := range hlKeys {
        hl = highlights[key]
        f.WriteString(fmt.Sprintf("hi %s guibg=%s guifg=%s", key, hl.Bg(defBg), hl.Fg(defFg)))
        f.WriteString(fmt.Sprintf(" gui=%s", hl.Gui(none)))
        if hl.HasSp() {
            f.WriteString(fmt.Sprintf(" guisp=%s", hl.sp))
        }
        f.WriteString("\n")
    }
    f.WriteString("\n")

    // Sort colors alphabetically
    cKeys := make([]string, 0, len(colors))
    for k := range colors {
        cKeys = append(cKeys, k)
    }
    sort.Strings(cKeys)

    // Write color variables for external use
    for _, key := range cKeys {
        f.WriteString(fmt.Sprintf("let g:unicorn_%s = \"%s\"\n", key, colors[key]))
    }

}

var dark_colors = map[string]string{
    "fg": "#ebdbb2",
    "bg": "#191919",

    "green": "#b8bb26",
    "blue": "#719386",
    "grey": "#928374",
    "red": "#D6461A",
    "purple": "#d3869b",
    "orange": "#fe8019",
    "yellow": "#f6d32d",

    "bg_2": "#262626", // altered bg, e.g. for colorcolumn
    "grey_2": "#665b50", // altered grey e.g. linenr
    "fg_2": "#91876d", // altered fg
    "tree_bg": "#131313",
}

var light_colors = map[string]string{
    "fg": "#3f3f3f",
    "bg": "#ebdbb2",

    "green": "#909314",
    "blue": "#3b6a58",
    "grey": "#928374",
    "red": "#D6461A",
    "purple": "#9d6877",
    "orange": "#d26106",
    "yellow": "#c5b256",
    
    "bg_2": "#dbcca6",
    "grey_2": "#988d6f",
    "fg_2": "#91876d",
    "tree_bg": "#dbcca7",
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

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "unicorn"

`)

    // Write highlights
    f.WriteString("if &background == \"light\"\n")
    WriteHighlights(f, GetHighlights(light_colors), light_colors, light_colors["bg"], light_colors["fg"])
    f.WriteString("\nelse\n")
    WriteHighlights(f, GetHighlights(dark_colors), dark_colors, dark_colors["bg"], dark_colors["fg"])
    f.WriteString("\nendif\n")
}
