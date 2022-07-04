# NiyVim

It's a feature-rich neovim configuration for using it as a full-featured IDE in daily coding.

![niyvim01](https://user-images.githubusercontent.com/44201798/176666315-bf03acfc-631c-4a8d-a1e3-fb4567783acf.png)

## Requirements

- Neovim 0.8
- [Nerd Fonts](https://www.nerdfonts.com/font-downloads)
- [ripgrep](https://github.com/BurntSushi/ripgrep)

## Features

- File explorer and quick navigation
- Beautiful UI
- Terminal
- Integration with git
- Status bar
- Fuzzy finding

## Installation

Back up your current neovim configuration and clone this repository to the `~/.config/nvim` directory.

```sh
git clone https://github.com/mszenfeld/niyvim.git ~/.config/nvim
```

Now, you can run neovim and install required packages:

```sh
nvim +PackerSync
```

## Default Mappings

### General

Mapping | Action
--- | ---
`jj` | Escape key
`Ctrl` + `h` | Go to the left window
`Ctrl` + `j` | Go to the window below
`Ctrl` + `k` | Go to the window above
`Ctrl` + `l` | Go to the right window
`\+` | Increase window size
`\-` | Decrease window size
`Ctrl` + `\` | Open terminal 
`gcc` | Toggle the current line using linewise comment 
`\fo` | Toggle fold
`Space` + `?` | Show key binding: + `?` | Show key binding

### File explorer

Mapping | Action
--- | ---
`Ctrl` + `f` | Open/focus file explorer
`Ctrl` + `p` | Open floating window with active buffers

### File navigation

Mapping | Action
--- | ---
`\fi` | Find files
`\rg` | Live grep

### Git 

Mapping | Action
--- | ---
`\hs` | Stage hunk
`\hr` | Reset hunk
`\hp` | Preview hunk

### LSP

Mapping | Action
--- | ---
`gd` | Go to definition
`gy` | Go to type definition
`gi` | Go to implementation
`gr` | Go to references
`\rn` | Rename
`Shift` + `k` | Show documentation
`Space` + `l` | Show diagnostics
`Space` + `f` | Code actions 

### Tests

Mapping | Action
--- | ---
`Space` + `tn` | Test nearest
`Space` + `tf` | Test file
`Space` + `tl` | Test last

### Sessions

Mapping | Action
--- | ---
`\ss` | Save Session
`\sl` | Load Session

## Configuration

To add your custom configuration, you can create a `config.lua` file and put it there. For instance, if you want to override default mapping for `<leader>a`, you can put target mapping in `config.lua`.

```lua
-- config.lua

vim.api.nvim_set_keymap('n', '<Leader>a', ':Telescope find_files<CR>', { silent = true })
```
