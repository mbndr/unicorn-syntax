# Generate colors/unicorn.vim
# :so $VIMRUNTIME/syntax/hitest.vim
# TODO: different colors for each lsp completion type

import std/tables
import std/options
import os

# Real colors
const unicorn_white = "#ebdbb2"
const unicorn_black = "#191919"
const unicorn_green = "#b8bb26"
const unicorn_blue = "#719386"
const unicorn_grey = "#928374"
const unicorn_red = "#D6461A"
const unicorn_purple = "#d3869b"
const unicorn_orange = "#fe8019"
const unicorn_yellow = "#f6d32d"
# Helpers
const unicorn_black_light = "#262626"
const unicorn_dark_grey = "#665b50"
const unicorn_white_dark = "#91876d"
# Background for file tree
const unicorn_tree_bg = "#131313"

# Colors as Options
let white = some(unicorn_white)
let black = some(unicorn_black)
let green = some(unicorn_green)
let blue = some(unicorn_blue)
let grey = some(unicorn_grey)
let red = some(unicorn_red)
let purple = some(unicorn_purple)
let orange = some(unicorn_orange)
let yellow = some(unicorn_yellow)
let black_light = some(unicorn_black_light)
let dark_grey = some(unicorn_dark_grey)
let white_dark = some(unicorn_white_dark)
let tree_bg = some(unicorn_tree_bg)

type Hl = object
  fg: Option[string]
  bg: Option[string]
  gui: Option[string]
  sp: Option[string]

# Some constants
let undercurl = some("undercurl")
let underline = some("underline")
let none = some("none")
let bold = some("bold")

# Define dark highlights
let dark_bg = unicorn_black
let dark_fg = unicorn_white
var dark_colors = initOrderedTable[string, Hl]()
dark_colors["Normal"] = HL()
dark_colors["SpecialKey"] = HL(fg: yellow)
dark_colors["LineNr"] = HL(fg: dark_grey)
dark_colors["EndOfBuffer"] = HL(fg: blue, bg: none)
dark_colors["CursorLine"] = HL(fg: none, bg: none)
dark_colors["CursorLineNr"] = HL(bg: black_light, fg: blue)
dark_colors["ColorColumn"] = HL(bg: black_light)
dark_colors["Todo"] = HL(bg: black_light, fg: orange, gui: bold)
dark_colors["NonText"] = HL(fg: green)
dark_colors["Visual"] = HL(bg: blue, fg: black)
dark_colors["SpellBad"] = HL(gui: undercurl, sp: orange, fg: none)
dark_colors["SpellCap"] = HL(gui: undercurl, sp: blue, fg: none)
dark_colors["SpellRare"] = HL(gui: undercurl, sp: purple, fg: none)
dark_colors["SpellLocal"] = HL(gui: undercurl, sp: yellow, fg: none)
dark_colors["StatusLine"] = HL(bg: black_light, fg: white)
dark_colors["StatusLineNC"] = HL(bg: black_light, fg: white_dark)
dark_colors["ModeMsg"] = HL(fg: purple)
dark_colors["MoreMsg"] = HL(fg: blue)
dark_colors["VertSplit"] = HL(fg: dark_grey)
dark_colors["MatchParen"] = HL(gui: bold, bg: black_light, fg: orange)
dark_colors["NvimInternalError"] = HL(bg: red, fg: black)
dark_colors["Error"] = HL(bg: red, fg: white)
dark_colors["ErrorMsg"] = HL(bg: red, fg: white)
dark_colors["RedrawDebugRecompose"] = HL(bg: red, fg: white)
dark_colors["RedrawDebugComposed"] = HL(bg: green, fg: black)
dark_colors["RedrawDebugClear"] = HL(bg: yellow, fg: black)
dark_colors["DiffText"] = HL(bg: red, fg: white)
dark_colors["WarningMsg"] = HL(fg: red)
dark_colors["Search"] = HL(bg: yellow, fg: black)
dark_colors["Folded"] = HL(bg: black_light, fg: white_dark)
dark_colors["Question"] = HL(fg: blue)
dark_colors["NormalFloat"] = HL(bg: black_light, fg: blue)
dark_colors["Pmenu"] = HL(bg: black_light, fg: blue)
dark_colors["PmenuSel"] = HL(bg: white_dark, fg: black)
dark_colors["SignColumn"] = HL()
dark_colors["Comment"] = HL(fg: grey)
dark_colors["Constant"] = HL(fg: purple)
dark_colors["String"] = HL(fg: green)
dark_colors["Character"] = HL(fg: blue)
dark_colors["Number"] = HL(fg: orange)
dark_colors["Boolean"] = HL(fg: purple)
dark_colors["Float"] = HL(fg: red)
dark_colors["Identifier"] = HL()
dark_colors["Statement"] = HL(fg: blue)
dark_colors["PreProc"] = HL(fg: blue)
dark_colors["Type"] = HL(fg: blue)
dark_colors["Special"] = HL(fg: purple)
dark_colors["Title"] = HL(fg: purple)
dark_colors["markdownH1"] = HL(fg: blue)
dark_colors["markdownH2"] = HL(fg: blue)
dark_colors["markdownH3"] = HL(fg: blue)
dark_colors["markdownH4"] = HL(fg: blue)
dark_colors["markdownH5"] = HL(fg: blue)
dark_colors["markdownH6"] = HL(fg: blue)
dark_colors["markdownH1Delimiter"] = HL(fg: blue)
dark_colors["markdownH2Delimiter"] = HL(fg: blue)
dark_colors["markdownH3Delimiter"] = HL(fg: blue)
dark_colors["markdownH4Delimiter"] = HL(fg: blue)
dark_colors["markdownH5Delimiter"] = HL(fg: blue)
dark_colors["markdownH6Delimiter"] = HL(fg: blue)
dark_colors["markdownLinkText"] = HL(fg: green)
dark_colors["markdownUrl"] = HL(fg: orange)
dark_colors["markdownCodeDelimiter"] = HL(fg: purple)
dark_colors["markdownCode"] = HL(fg: white_dark)
dark_colors["mesonBuiltin"] = HL(fg: blue)
dark_colors["makeTarget"] = HL(fg: green)
dark_colors["texInputFile"] = HL(fg: green)
dark_colors["TelescopeBorder"] = HL(fg: blue)
dark_colors["Directory"] = HL(fg: blue)
dark_colors["NvimTreeNormal"] = HL(fg: white, bg: tree_bg)
dark_colors["NvimTreeFolderName"] = HL(fg: blue, bg: tree_bg)
dark_colors["NvimTreeOpenedFolderName"] = HL(fg: blue, bg: tree_bg)
dark_colors["NvimTreeIndentMarker"] = HL(fg: black_light, bg: tree_bg)
dark_colors["NvimTreeFolderIcon"] = HL(fg: blue, bg: tree_bg)
dark_colors["NvimTreeRootFolder"] = HL(fg: dark_grey, bg: tree_bg)
dark_colors["NvimTreeSpecialFile"] = HL(fg: green, bg: tree_bg)
dark_colors["NvimTreeImageFile"] = HL(bg: tree_bg)
dark_colors["NvimTreeGitDirty"] = HL(fg: orange, bg: tree_bg)
dark_colors["NvimTreeGitNew"] = HL(fg: yellow, bg: tree_bg)
dark_colors["NvimTreeGitStaged"] = HL(fg: green, bg: tree_bg)
dark_colors["NvimTreeGitDeleted"] = HL(fg: red, bg: tree_bg)
dark_colors["LspDiagnosticsError"] = HL(fg: red)
dark_colors["LspDiagnosticsWarning"] = HL(fg: yellow)
dark_colors["LspDiagnosticsInformation"] = HL(fg: blue)
dark_colors["LspDiagnosticsHint"] = HL(fg: purple)
dark_colors["LspDiagnosticsDefaultError"] = HL(fg: red)
dark_colors["LspDiagnosticsDefaultWarning"] = HL(fg: yellow)
dark_colors["LspDiagnosticsDefaultInformation"] = HL(fg: blue)
dark_colors["LspDiagnosticsDefaultHint"] = HL(fg: purple)
dark_colors["LspDiagnosticsUnderlineError"] = HL(sp: red, gui: underline)
dark_colors["LspDiagnosticsUnderlineWarning"] = HL(sp: yellow, gui: underline)
dark_colors["LspDiagnosticsUnderlineInformation"] = HL(sp: blue, gui: underline)
dark_colors["LspDiagnosticsUnderlineHint"] = HL(sp: purple, gui: underline)
dark_colors["DiagnosticUnderlineError"] = HL(sp: red, gui: underline)
dark_colors["DiagnosticUnderlineWarn"] = HL(sp: yellow, gui: underline)
dark_colors["DiagnosticUnderlineInfo"] = HL(sp: blue, gui: underline)
dark_colors["DiagnosticUnderlineHint"] = HL(sp: purple, gui: underline)
dark_colors["DiagnosticError"] = HL(fg: red)
dark_colors["DiagnosticUnderline"] = HL(sp: red, gui: underline)
dark_colors["DiffAdd"] = HL(fg: green, bg: black)
dark_colors["DiffChange"] = HL(fg: blue, bg: black)
dark_colors["DiffDelete"] = HL(fg: red, bg: black)
dark_colors["Underlined"] = HL(fg: blue, gui: underline)
dark_colors["tutorLink"] = HL(fg: blue, gui: underline)
dark_colors["tutorOK"] = HL(fg: green, gui: bold)
dark_colors["tutorX"] = HL(fg: red, gui: bold)
dark_colors["dartIdentifier"] = HL(fg: blue)

proc generate(p: string) =
  let f = open(p, fmWrite)
  defer: f.close()

  # Header
  f.writeLine("""
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
""")

  # Highlights
  for key, hl in dark_colors:
    f.write("hi " & key & " guibg=" & hl.bg.get(dark_bg) & " guifg=" & hl.fg.get(dark_fg))
    f.write(" gui=" & hl.gui.get("none"))
    if hl.sp.isSome():
      f.write(" guisp=" & hl.sp.get())
    f.writeLine("")

# Program start

if paramCount() != 1:
  echo "usage: nim r generate.nim <output-file>"
  quit(1)
generate(paramStr(1))
