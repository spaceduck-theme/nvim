local spaceduck = {}

spaceduck.normal = {
  -- gui parameter is optional and behaves the same way as in vim's highlight command
  a = { bg = colors.grey_purple, fg = colors.blackish, gui = "bold" },
  b = { bg = colors.dark_purple, fg = colors.greyer },
  c = { bg = colors.blackish, fg = colors.greyer },
}

spaceduck.insert = {
  a = { bg = colors.green, fg = colors.blackish, gui = "bold" },
  b = { bg = colors.dark_purple, fg = colors.greyer },
  c = { bg = colors.blackish, fg = colors.greyer },
}

spaceduck.visual = {
  a = { bg = colors.yellow, fg = colors.blackish, gui = "bold" },
  b = { bg = colors.dark_purple, fg = colors.greyer },
  c = { bg = colors.blackish, fg = colors.greyer },
}

spaceduck.replace = {
  a = { bg = colors.purple, fg = colors.blackish, gui = "bold" },
  b = { bg = colors.dark_purple, fg = colors.greyer },
  c = { bg = colors.blackish, fg = colors.greyer },
}

spaceduck.command = {
  a = { bg = colors.cyan, fg = colors.blackish, gui = "bold" },
  b = { bg = colors.dark_purple, fg = colors.greyer },
  c = { bg = colors.blackish, fg = colors.greyer },
}

-- you can assign one colorscheme to another, if a colorscheme is
-- undefined it falls back to normal
spaceduck.terminal = spaceduck.normal

spaceduck.inactive = {
  a = { bg = colors.blackish, fg = colors.greyer, gui = "bold" },
  b = { bg = colors.blackish, fg = colors.greyer },
  c = { bg = colors.blackish, fg = colors.greyer },
}

-- lualine.theme = spaceduck
return spaceduck
