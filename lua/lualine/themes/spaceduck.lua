local colors = require("palette")
local spaceduck = {}

spaceduck.normal = {
  -- gui parameter is optional and behaves the same way as in vim's highlight command
  a = { bg = colors.grey_purple.hex, fg = colors.blackish.hex, gui = "bold" },
  b = { bg = colors.dark_purple.hex, fg = colors.greyer.hex },
  c = { bg = colors.blackish.hex, fg = colors.greyer.hex },
}

spaceduck.insert = {
  a = { bg = colors.green.hex, fg = colors.blackish.hex, gui = "bold" },
  b = { bg = colors.dark_purple.hex, fg = colors.greyer.hex },
  c = { bg = colors.blackish.hex, fg = colors.greyer.hex },
}

spaceduck.visual = {
  a = { bg = colors.yellow.hex, fg = colors.blackish.hex, gui = "bold" },
  b = { bg = colors.dark_purple.hex, fg = colors.greyer.hex },
  c = { bg = colors.blackish.hex, fg = colors.greyer.hex },
}

spaceduck.replace = {
  a = { bg = colors.purple.hex, fg = colors.blackish.hex, gui = "bold" },
  b = { bg = colors.dark_purple.hex, fg = colors.greyer.hex },
  c = { bg = colors.blackish.hex, fg = colors.greyer.hex },
}

spaceduck.command = {
  a = { bg = colors.cyan.hex, fg = colors.blackish.hex, gui = "bold" },
  b = { bg = colors.dark_purple.hex, fg = colors.greyer.hex },
  c = { bg = colors.blackish.hex, fg = colors.greyer.hex },
}

-- you can assign one colorscheme to another, if a colorscheme is
-- undefined it falls back to normal
spaceduck.terminal = spaceduck.normal

spaceduck.inactive = {
  a = { bg = colors.blackish.hex, fg = colors.greyer.hex, gui = "bold" },
  b = { bg = colors.blackish.hex, fg = colors.greyer.hex },
  c = { bg = colors.blackish.hex, fg = colors.greyer.hex },
}

-- lualine.theme = spaceduck
return spaceduck
