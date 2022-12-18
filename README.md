<div align="center">
	<h1>Spaceduck theme for Nvim</h1>
	<strong>Spaceduck for neovim. All Lua, all spaceduck, always intergalactic.</strong>
</div>

<hr>

<center>
  <img  src="https://github.com/pineapplegiant/spaceduck-terminal/blob/main/img/banner.png?raw=true" alt="Spaceduck Logo of duck in an astronaut uniform holding computer: credit to Lexi @kalrita_lw">
</center>

<center>
  <img  src="https://github.com/pineapplegiant/spaceduck-terminal/blob/main/img/screenshot.png?raw=true" alt="Screenshot of terminal with vim spaceduck theme installed">
</center>

This is Nvim spaceduck theme port written in Lua.

# Inspiration 💭

This theme was inspired from my incessant desire to feel like I'm in space when I stare at a computer.
"Spaceduck" takes its name from my love of [duck dodgers](https://m.media-amazon.com/images/M/MV5BNDY2YjgyZGMtMWY2Zi00ZmQ5LTg0YjgtNjYyMGNkMTMzNWU1XkEyXkFqcGdeQXVyMzM4NjcxOTc@._V1_.jpg) as a kid.

# Current Language Support

Basically languages I looked at with my eyes to make sure they didn't look like poop.

**Languages:**

_Note: if something looks off please submit an issue with a screenshot_

- C, C++, fortran, haskell, html, java, javascript, markdown, php, python, ruby, sql, LaTeX, typescript

# Installation

## [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use({ "spaceduck-theme/nvim", as = "spaceduck" })
```

We use semver on spaceduck so you can refer to a specific tag if you want instead of the `master` branch.

# Plugins support

## [Lualine](https://github.com/hoob3rt/lualine.nvim)

<center>
  <img  src="https://user-images.githubusercontent.com/32819563/111934957-16f0d780-8a88-11eb-9f33-f02c9ba364c1.png" alt="lualine normal mode screenshot">
  <img  src="https://user-images.githubusercontent.com/32819563/111934981-21ab6c80-8a88-11eb-8118-dfbc2dc3bddf.png" alt="lualine insert mode screenshot">
  <img  src="https://user-images.githubusercontent.com/32819563/111935019-325be280-8a88-11eb-9846-a2d7bfec226c.png" alt="lualine visual mode screenshot">
  <img  src="https://user-images.githubusercontent.com/32819563/111935037-3ab41d80-8a88-11eb-8797-2b6db14cbff8.png" alt="lualine replace mode screenshot">
</center>

```lua
require("lualine").setup({
  options = {
    theme = "spaceduck",
  },
})
```

# Contributing

We welcome all contributions. Before you contribute you should be aware of some tooling we have in place to help us maintaining this project.

We use [`gitmoji`](https://gitmoji.dev/) and [`semantic-release`](https://semantic-release.gitbook.io/semantic-release/) to respectively give meaning to our commits and automatically version the project based on these commits. `gitmoji` has a lot of different emojis you can use to give meaning to your commits. We recommend you check the link given to familiarize yourself with it. They provide a [quizz website](https://gitmemoji.lalilo.com/) to learn it.

To assist you in writing your commits when you develop on this project, we recommend you to use [gitmoji-cli](https://github.com/carloscuesta/gitmoji-cli).
