# NiyVim

It's a feature-rich neovim configuration for using it as a full-featured IDE in daily coding.

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
`\` + `+` | Increase window size
`\` + `-` | Decrease window size
`Ctrl` + `\` | Open terminal 
`gcc` | Toggle the current line using linewise comment 
`\fo` | Toggle fold

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
