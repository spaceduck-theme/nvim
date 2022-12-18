" ============================================================
" spaceduck
"
" URL:http//github.com/pineapplegiant/spaceduck
" Author: Guillermo Rodriguez
" License: MIT
" Last Change: 2021/03/16 22:28
" ============================================================
lua << EOF

local colors = require("palette")

vim.g["airline#themes#spaceduck#palette"] = {}

local normal1 = { colors.black.hex, colors.dark_purple.hex, colors.black.cterm, colors.dark_purple.cterm }
local normal2 = { colors.dark_purple.hex, colors.grey_purple.hex, colors.dark_purple.cterm, colors.grey_purple.cterm }
local normal3 = { colors.dark_purple.hex, colors.grey_purple.hex, colors.dark_purple.cterm, colors.grey_purple.cterm }
vim.g["airline#themes#spaceduck#palette"].normal = vim.fn["airline#themes#generate_color_map"](
  normal1,
  normal2,
  normal3
)

local insert1 = { colors.black.hex, colors.green.hex, colors.black.cterm, colors.green.cterm }
local insert2 = { colors.dark_purple.hex, colors.grey_purple.hex, colors.dark_purple.cterm, colors.grey_purple.cterm }
local insert3 = { colors.dark_purple.hex, colors.grey_purple.hex, colors.dark_purple.cterm, colors.grey_purple.cterm }
vim.g["airline#themes#spaceduck#palette"].insert = vim.fn["airline#themes#generate_color_map"](
  insert1,
  insert2,
  insert3
)

local replace1 = { colors.black.hex, colors.purple.cterm, colors.black.cterm, colors.purple.cterm }
local replace2 = { colors.dark_purple.hex, colors.grey_purple.hex, colors.dark_purple.cterm, colors.grey_purple.cterm }
local replace3 = { colors.dark_purple.hex, colors.grey_purple.hex, colors.dark_purple.cterm, colors.grey_purple.cterm }
vim.g["airline#themes#spaceduck#palette"].replace = vim.fn["airline#themes#generate_color_map"](
  replace1,
  replace2,
  replace3
)

local visual1 = { colors.black.hex, colors.yellow.hex, colors.black.cterm, colors.yellow.cterm }
local visual2 = { colors.dark_purple.hex, colors.grey_purple.hex, colors.dark_purple.cterm, colors.grey_purple.cterm }
local visual3 = { colors.dark_purple.hex, colors.grey_purple.hex, colors.dark_purple.cterm, colors.grey_purple.cterm }
vim.g["airline#themes#spaceduck#palette"].visual = vim.fn["airline#themes#generate_color_map"](
  visual1,
  visual2,
  visual3
)

local inactive1 = { colors.dark_grey.hex, colors.dark_blue.hex, colors.dark_grey.cterm, colors.dark_blue.cterm }
local inactive2 = { colors.dark_grey.hex, colors.dark_blue.hex, colors.dark_grey.cterm, colors.dark_blue.cterm }
local inactive3 = { colors.dark_grey.hex, colors.dark_blue.hex, colors.dark_grey.cterm, colors.dark_blue.cterm }
vim.g["airline#themes#spaceduck#palette"].inactive = vim.fn["airline#themes#generate_color_map"](
  inactive1,
  inactive2,
  inactive3
)

if not vim.g.loaded_ctrlp then
  return
end

local CP1 = { colors.cream.hex, colors.blackish.hex, colors.cream.cterm, colors.blackish.cterm }
local CP2 = { colors.cream.hex, colors.blackish.hex, colors.cream.cterm, colors.blackish.cterm }
local CP3 = { colors.cream.hex, colors.blackish.hex, colors.cream.cterm, colors.blackish.cterm }

vim.g["airline#themes#spaceduck#palette"].ctrlp = vim.fn["airline#extensions#ctrlp#generate_color_map"](CP1, CP2, CP3)

EOF
