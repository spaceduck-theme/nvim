-- ===============================================================
-- spaceduck
-- 
-- URL: https://github.com/pineapplegiant/spaceduck
-- Author: Guillermo Rodriguez
-- License: MIT
-- ===============================================================
vim.opt.background = "dark"
vim.api.nvim_command("hi clear")

local syntaxOnExists = vim.api.nvim_exec("exists('syntax_on')", true)
if syntaxOnExists == 1 then
  vim.api.nvim_command("syntax reset")
end

vim.g.colors_name = "spaceduck"

local Italic = ""
if vim.g.spaceduck_italic then
  Italic = "italic"
end

local Bold = ""
if vim.g.spaceduck_bold then
  Bold = "bold"
end

local colors = {
  cream = { hex = "#ecf0c1", cterm = 255 },
  white = { hex = "#FFFFFF", cterm = 15 },

  black = { hex = "#000000", cterm = 0 },
  blackish = { hex = "#0f111b", cterm = 233 },

  dark_blue = { hex = "#16172d", cterm = 234 },

  dark_grey = { hex = "#1b1c36", cterm = 234 },
  greyer = { hex = "#c1c3cc", cterm = 251 },
  grey = { hex = "#818596", cterm = 102 },

  dark_purple = { hex = "#30365F", cterm = 237 },
  grey_purple = { hex = "#686f9a", cterm = 60 },
  purple = { hex = "#7a5ccc", cterm = 98 },
  light_purple = { hex = "#b3a1e6", cterm = 146 },

  cyan = { hex = "#00a3cc", cterm = 38 },
  green = { hex = "#5ccc96", cterm = 78 },
  orange = { hex = "#e39400", cterm = 172 },
  red = { hex = "#e33400", cterm = 166 },
  yellow = { hex = "#f2ce00", cterm = 220 },
  magenta = { hex = "#ce6f8f", cterm = 168 },
}

vim.g.terminal_color_foreground = colors.cream.hex
vim.g.terminal_color_background = colors.blackish.hex
vim.g.terminal_color_0 = colors.black.hex
vim.g.terminal_color_1 = colors.red.hex
vim.g.terminal_color_2 = colors.green.hex
vim.g.terminal_color_3 = colors.light_purple.hex
vim.g.terminal_color_4 = colors.cyan.hex
vim.g.terminal_color_5 = colors.magenta.hex
vim.g.terminal_color_6 = colors.purple.hex
vim.g.terminal_color_7 = colors.grey_purple.hex
vim.g.terminal_color_8 = colors.grey_purple.hex
vim.g.terminal_color_9 = colors.red.hex
vim.g.terminal_color_10 = colors.green.hex
vim.g.terminal_color_11 = colors.light_purple.hex
vim.g.terminal_color_12 = colors.cyan.hex
vim.g.terminal_color_13 = colors.magenta.hex
vim.g.terminal_color_14 = colors.purple.hex
vim.g.terminal_color_15 = colors.cream.hex

vim.g.terminal_ansi_colors =  [colors.black.hex, colors.red.hex, colors.green.hex, colors.light_purple.hex, colors.cyan.hex, colors.magenta.hex, colors.purple.hex, colors.grey_purple, colors.grey_purple, colors.red.hex, colors.green.hex, colors.light_purple.hex, colors.cyan.hex, colors.magenta.hex, colors.purple.hex, colors.cream.hex]

local scheme = {
  ColorColumn = { bg = colors.dark_blue.hex, ctermbg = colors.dark_blue.cterm },
  CursorColumn = { bg = colors.dark_blue.hex, ctermbg = colors.dark_blue.cterm },
  Conceal = { fg = colors.grey_purple.hex, ctermfg = colors.grey_purple.cterm },
  Cursor = { fg = colors.blackish.hex, ctermfg = colors.blackish.cterm, bg = colors.grey.hex, ctermbg = colors.grey.cterm },
  CursorIM = { link = "Cursor" },
  CursorLine = { bg = colors.dark_blue.hex, ctermfg = colors.dark_blue.cterm  },
  CursorLineNr = { fg = colors.greyer.hex, ctermfg = colors.greyer.cterm, bg = colors.dark_blue.hex, ctermbg = colors.dark_blue.cterm },
  Directory = { fg = colors.cyan.hex, ctermfg = colors.cyan.cterm },
  DiffAdd = { fg = colors.green.hex, ctermfg = colors.green.cterm, bg = colors.dark_grey.hex, ctermbg = colors.dark_grey.cterm },
  DiffChange = { fg = colors.orange.hex, ctermfg = colors.orange.cterm, bg = colors.dark_grey.hex, ctermbg = colors.dark_grey.cterm },
  DiffDelete = { fg = colors.red.hex, ctermfg = colors.red.cterm, bg = colors.dark_grey.hex, ctermbg = colors.dark_grey.cterm },
  DiffText = { fg = colors.yellow.hex, ctermfg = colors.yellow.cterm, bg = colors.dark_grey.hex, ctermbg = colors.dark_grey.cterm },
  EndOfBuffer = { fg = colors.dark_purple.hex, ctermfg = colors.dark_purple.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm },
  TermCursor = { link = "Cursor" },
  ErrorMsg = { fg = colors.red.hex, ctermfg = colors.red.cterm },
  VertSplit = { fg = colors.black.hex, ctermfg = colors.black.cterm, bg = colors.black.hex, ctermbg = colors.black.cterm },
  Folded = { fg = colors.grey_purple.hex, ctermfg = colors.grey_purple.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm },
  FoldColumn = { fg = colors.dark_purple.hex, ctermfg = colors.dark_purple.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm },
  SignColumn = { fg = colors.dark_purple.hex, ctermfg = colors.dark_purple.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm },
  IncSearch = { fg = colors.white.hex, ctermfg = colors.white.cterm, bg = colors.dark_purple.hex, ctermbg = colors.dark_purple.cterm },
  LineNr = { fg = colors.dark_purple.hex, ctermfg = colors.dark_purple.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm },
  MatchParen = { fg = colors.white.hex, ctermfg = colors.white.cterm, bg = colors.dark_purple.hex, ctermbg = colors.dark_purple.cterm },
  ModeMsg = { fg = colors.light_purple.hex, ctermfg = colors.light_purple.cterm },
  MoreMsg = { fg = colors.light_purple.hex, ctermfg = colors.light_purple.cterm },
  NonText = { link = "EndOfBuffer" },
  Pmenu = { fg = colors.cream.hex, ctermfg = colors.cream.cterm, bg = colors.dark_grey.hex, ctermbg = colors.dark_grey.cterm },
  PmenuSel = { fg = colors.white.hex, ctermfg = colors.white.cterm, bg = colors.dark_purple.hex, ctermbg = colors.dark_purple.cterm },
  PmenuSbar = { bg = colors.dark_purple.hex, ctermbg = colors.dark_purple.cterm },
  PmenuThumb = { bg = colors.grey_purple.hex, ctermbg = colors.grey_purple.cterm },
  Question = { fg = colors.light_purple.hex, ctermfg = colors.light_purple.cterm },
  QuickFixLine = { fg = colors.cream.hex, ctermfg = colors.cream.cterm, bg = colors.dark_blue.hex, ctermbg = colors.dark_blue.cterm },
  Search = { fg = colors.white.hex, ctermfg = colors.white.cterm, bg = colors.grey_purple.hex, ctermbg = colors.grey_purple.cterm },
  SpecialKey = { fg = colors.orange.hex, ctermfg = colors.orange.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm },
  SpellBad = { fg = colors.red.hex, ctermfg = colors.red.cterm, underline = true },
  SpellLocal = { fg = colors.cream.hex, ctermfg = colors.cream.cterm, underline = true },
  SpellCap = { fg = colors.green.hex, ctermfg = colors.green.cterm, underline = true },
  SpellRare = { fg = colors.yellow.hex, ctermfg = colors.yellow.cterm, underline = true },
  StatusLine = { fg = colors.cream.hex, ctermfg = colors.cream.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm, reverse = true },
  StatusLineTerm = { link = "StatusLine" },
  StatusLineTermNC = { fg = colors.black.hex, ctermfg = colors.black.cterm, bg = colors.dark_purple.hex, ctermbg = colors.dark_purple.cterm, reverse = true },
  StatusLineNC = { link = "StatusLineTermNC " },
  TabLine = { fg = colors.black.hex, ctermfg = colors.black.cterm, bg = colors.grey.hex, ctermbg = colors.grey.cterm },
  TabLineFill = { fg = colors.grey.hex, ctermfg = colors.grey.cterm, bg = colors.black.hex, ctermbg = colors.black.cterm },
  TabLineSel = { fg = colors.greyer.hex, ctermfg = colors.greyer.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm },
  Visual = { bg = colors.dark_grey.hex, ctermbg = colors.dark_grey.cterm },
  VisualNOS = { link = "Visual" },
  WarningMsg = { fg = colors.orange.hex, ctermfg = colors.orange.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm },
  WildMenu = { fg = colors.black.hex, ctermfg = colors.black.cterm, bg = colors.greyer.hex, ctermbg = colors.greyer.cterm },
  Whitespace = { link = "EndOfBuffer" },
  diffAdded = { fg = colors.light_purple.hex, ctermfg = colors.light_purple.cterm },
  diffRemoved = { fg = colors.red.hex, ctermfg = colors.red.cterm },
  Normal = { fg = colors.cream.hex, ctermfg = colors.cream.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm },
  Comment = { fg = colors.dark_purple.hex, ctermfg = colors.dark_purple.cterm },
  Constant = { fg = colors.yellow.hex, ctermfg = colors.yellow.cterm },
  Identifier = { fg = colors.cyan.hex, ctermfg = colors.cyan.cterm },
  Statement = { fg = colors.green.hex, ctermfg = colors.green.cterm },
  PreProc = { fg = colors.light_purple.hex, ctermfg = colors.light_purple.cterm },
  Type = { fg = colors.magenta.hex, ctermfg = colors.magenta.cterm },
  Special = { fg = colors.light_purple.hex, ctermfg = colors.light_purple.cterm },
  Underlined = { fg = colors.green.hex, ctermfg = colors.green.cterm, underline = true },
  Error = { fg = colors.red.hex, ctermfg = colors.red.cterm },
  Ignore = { fg = colors.red.hex, ctermfg = colors.red.cterm },
  Delimiter = { fg = colors.cream.hex, ctermfg = colors.cream.cterm },
  Operator = { fg = colors.magenta.hex, ctermfg = colors.magenta.cterm },
  Tag = { fg = colors.light_purple.hex, ctermfg = colors.light_purple.cterm },
  Debug = { fg = colors.light_purple.hex, ctermfg = colors.light_purple.cterm },
  StorageClass = { fg = colors.light_purple.hex, ctermfg = colors.light_purple.cterm },
  String = { fg = colors.cyan.hex, ctermfg = colors.cyan.cterm },
  Structure = { fg = colors.cyan.hex, ctermfg = colors.cyan.cterm },
  Typedef = { fg = colors.cyan.hex, ctermfg = colors.cyan.cterm },
  Function = { fg = colors.green.hex, ctermfg = colors.green.cterm },
  Include = { fg = colors.green.hex, ctermfg = colors.green.cterm },
  Label = { fg = colors.green.hex, ctermfg = colors.green.cterm },
  Exception = { fg = colors.orange.hex, ctermfg = colors.orange.cterm },
  Keyword = { fg = colors.orange.hex, ctermfg = colors.orange.cterm },
  SpecialChar = { fg = colors.orange.hex, ctermfg = colors.orange.cterm },
  Boolean = { fg = colors.yellow.hex, ctermfg = colors.yellow.cterm },
  Character = { fg = colors.yellow.hex, ctermfg = colors.yellow.cterm },
  Float = { fg = colors.yellow.hex, ctermfg = colors.yellow.cterm },
  Number = { fg = colors.yellow.hex, ctermfg = colors.yellow.cterm },
  Conditional = { fg = colors.green.hex, ctermfg = colors.green.cterm },
  Repeat = { fg = colors.green.hex, ctermfg = colors.green.cterm },
  Title = { fg = colors.purple.hex, ctermfg = colors.purple.cterm },
  Define = { fg = colors.purple.hex, ctermfg = colors.purple.cterm },
  Macro = { fg = colors.purple.hex, ctermfg = colors.purple.cterm },
  PreCondit = { fg = colors.purple.hex, ctermfg = colors.purple.cterm },
  SpecialComment = { link = "Comment" },
  Todo = { fg = colors.white.hex, ctermfg = colors.white.cterm, bg = colors.grey_purple.hex, ctermbg = colors.grey_purple.cterm, underline = true },

  cFormat = { link = "Title" },
  cCppOutIf1 = { link = "Normal" },
  cCppOutIf2 = { link = "Normal" },
  cBracket = { link = "Title" },

  cssBraces = { link = "Normal" },
  cssSelectorOp = { fg = colors.magenta.hex, ctermfg = colors.magenta.cterm },

  fortranType = { link = "Tag" },
  fortranStructure = { link = "Structure" },
  fortranStorageClass = { link = "StorageClass" },
  fortranUnitHeader = { link = "Title" },

  haskellType = { link = "Tag" },
  haskellIdentifier = { link = "Label" },
  haskellKeyword = { link = "Boolean" },
  haskellDecl = { link = "Boolean" },

  htmlTagName = { link = "Function" },
  htmlEndTag = { link = "Conditional" },
  htmlArg = { link = "Tag" },
  htmlSpecialTagName = { link = "Type" },

  javaClassDecl = { link = "Structure" },
  javaTypeDef = { link = "Keyword" },

  jsStorageClass = { link = "Title" },
  jsFunction = { link = "Function" },
  jsFuncName = { link = "Special" },
  jsOperator = { link = "Operator" },
  jsNull = { link = "Constant" },
  jsGlobalObjects = { link = "Constant" },
  jsFuncCall = { link = "Function" },
  jsOperatorKeyword = { link = "Operator" },
  jsExceptions = { link = "Error" },
  jsTernaryIfOperator = { link = "Title" },
  jsTemplateBraces = { link = "Title" },
  jsTemplateExpression = { link = "String" },

  texTypeStyle = { link = "Special" },

  mkdDelimiter = { link = "Normal" },

  phpFunction = { link = "Function" },
  phpMethod = { link = "Function" },
  phpType = { link = "Constant" },
  phpIdentifier = { link = "Type" },
  phpStringSingle = { link = "String" },
  phpStringDouble = { link = "String" },

  pythonOperator = { fg = colors.magenta.hex, ctermfg = colors.magenta.cterm },

  rubyConstant = { link = "Constant" },
  rubyDefine = { link = "Define" },
  rubyMethodName = { link = "Function" },
  rubyInstanceVariable = { link = "Tag" },
  rubyKeywordAsMethod = { link = "Tag" },

  jsxTagName = { link = "HTMLTagName" },
  jsxComponentName = { link = "Tag" },
  jsxOpenPunct = { link = "jsxTagName" },
  jsxClosePunct = { link = "jsxOpenPunct" },
  jsxCloseString = { link = "jsxClosePunct" },

  typescriptProp = { link = "Tag" },
  typescriptVariable = { link = "Title" },
  typescriptArrowFunc = { fg = colors.magenta.hex, ctermfg = colors.magenta.cterm },
  typescriptBraces = { link = "Normal" },
  typescriptNumberStaticMethod = { link = "Function" },
  typescriptNumberMethod = { link = "Function" },
  typescriptStringStaticMethod = { link = "Function" },
  typescriptStringMethod = { link = "Function" },
  typescriptArrayStaticMethod = { link = "Function" },
  typescriptArrayMethod = { link = "Function" },
  typescriptObjectStaticMethod = { link = "Function" },
  typescriptObjectMethod = { link = "Function" },
  typescriptSymbolStaticMethod = { link = "Function" },
  typescriptFunctionMethod = { link = "Function" },
  typescriptMathStaticMethod = { link = "Function" },
  typescriptDateStaticMethod = { link = "Function" },
  typescriptDateMethod = { link = "Function" },
  typescriptJSONStaticMethod = { link = "Function" },
  typescriptRegExpMethod = { link = "Function" },
  typescriptES6MapMethod = { link = "Function" },
  typescriptES6SetMethod = { link = "Function" },
  typescriptPromiseStaticMethod = { link = "Function" },
  typescriptPromiseMethod = { link = "Function" },
  typescriptReflectMethod = { link = "Function" },
  typescriptIntlMethod = { link = "Function" },
  typescriptBOMNavigatorMethod = { link = "Function" },
  typescriptServiceWorkerMethod = { link = "Function" },
  typescriptBOMLocationMethod = { link = "Function" },
  typescriptBOMHistoryMethod = { link = "Function" },
  typescriptConsoleMethod = { link = "Function" },
  typescriptXHRMethod = { link = "Function" },
  typescriptFileMethod = { link = "Function" },
  typescriptFileReaderMethod = { link = "Function" },
  typescriptFileListMethod = { link = "Function" },
  typescriptBlobMethod = { link = "Function" },
  typescriptURLStaticMethod = { link = "Function" },
  typescriptSubtleCryptoMethod = { link = "Function" },
  typescriptCryptoMethod = { link = "Function" },
  typescriptHeadersMethod = { link = "Function" },
  typescriptRequestMethod = { link = "Function" },
  typescriptResponseMethod = { link = "Function" },
  typescriptCacheMethod = { link = "Function" },
  typescriptEncodingMethod = { link = "Function" },
  typescriptGeolocationMethod = { link = "Function" },
  typescriptPaymentMethod = { link = "Function" },
  typescriptPaymentResponseMethod = { link = "Function" },
  typescriptDOMNodeMethod = { link = "Function" },
  typescriptDOMDocMethod = { link = "Function" },
  typescriptDOMEventTargetMethod = { link = "Function" },
  typescriptDOMEventMethod = { link = "Function" },
  typescriptDOMStorageMethod = { link = "Function" },
  typescriptDOMFormMethod = { link = "Function" },

  vimGroupName = { link = "Normal" },

  yamlKeyValueDelimiter = { link = "Normal" },
  yamlBlockMappingKey = { link = "Function" },

  vistaTag = { link = "Conditional" },
  vistaIcon = { link = "Identifier" },
  vistaColon = { link = "Normal" },
  vistaScope = { link = "Constant" },
  vistaKind = { link = "Conditional" },

  Sneak = { fg = colors.black.hex, ctermfg = colors.black.cterm, bg = colors.yellow.hex, ctermbg = colors.yellow.cterm },
  BufferCurrent = { fg = colors.greyer.hex, ctermfg = colors.greyer.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm },
  BufferVisible = { fg = colors.dark_purple.hex, ctermfg = colors.dark_purple.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm },
  BufferInactive = { fg = colors.dark_purple.hex, ctermfg = colors.dark_purple.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm },
  BufferTabpageFill = { fg = colors.blackish.hex, ctermfg = colors.blackish.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm },
  BufferCurrentIndex = { fg = colors.green.hex, ctermfg = colors.green.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm },
  BufferVisibleIndex = { fg = colors.dark_purple.hex, ctermfg = colors.dark_purple.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm },
  BufferInactiveIndex = { fg = colors.dark_purple.hex, ctermfg = colors.dark_purple.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm },
  BufferCurrentMod = { fg = colors.orange.hex, ctermfg = colors.orange.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm },
  BufferVisibleMod = { fg = colors.orange.hex, ctermfg = colors.orange.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm },
  BufferInactiveMod = { fg = colors.orange.hex, ctermfg = colors.orange.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm },
  BufferCurrentSign = { fg = colors.green.hex, ctermfg = colors.green.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm },
  BufferVisibleSign = { fg = colors.dark_purple.hex, ctermfg = colors.dark_purple.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm },
  BufferInactiveSign = { fg = colors.dark_purple.hex, ctermfg = colors.dark_purple.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm },
  BufferCurrentTarget = { fg = colors.magenta.hex, ctermfg = colors.magenta.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm },
  BufferVisibleTarget = { fg = colors.magenta.hex, ctermfg = colors.magenta.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm },
  BufferInactiveTarget = { fg = colors.magenta.hex, ctermfg = colors.magenta.cterm, bg = colors.blackish.hex, ctermbg = colors.blackish.cterm },
}

for group, config in pairs(scheme) do
  vim.api.nvim_set_hl(0, group, config)
end
