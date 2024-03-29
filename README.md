# NiyVim

It's a feature-rich neovim configuration for using it as a full-featured IDE in daily coding.

![niyvim01](https://user-images.githubusercontent.com/44201798/176666315-bf03acfc-631c-4a8d-a1e3-fb4567783acf.png)
![niyvim02](https://user-images.githubusercontent.com/44201798/184225596-4b82f3eb-bc8b-4457-a347-e01652d473aa.png)


## ⚙️ Requirements

- Neovim 0.8
- [Nerd Fonts](https://www.nerdfonts.com/font-downloads)
- [ripgrep](https://github.com/BurntSushi/ripgrep)

## ✨ Features

- File explorer and quick navigation
- Beautiful UI
- Terminal
- Integration with git
- Status bar
- Fuzzy finding

## 🛠 Installation

Back up your current neovim configuration and clone this repository to the `~/.config/nvim` directory.

```sh
git clone https://github.com/mszenfeld/niyvim.git ~/.config/nvim
```

Now, you can run neovim and install required packages:

```sh
nvim
```

## ⌨️ Default Mappings

### General

Mapping | Action
--- | ---
`jj` | Escape key
`qq` | Close window
`Ctrl` + `h` | Go to the left window
`Ctrl` + `j` | Go to the window below
`Ctrl` + `k` | Go to the window above
`Ctrl` + `l` | Go to the right window
`Ctrl` + `\` | Open terminal 
`gcc` | Toggle the current line using linewise comment 
`Space` + `?` | Show key binding: + `?` | Show key binding
`\a` | Toggle Aerial
`\db` | Toggle database UI

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

### Sessions

Mapping | Action
--- | ---
`\ss` | Save Session
`\sl` | Load Session

## Configuration

To add your custom configuration, you can put it in `lua/config.lua` file: 

```lua
-- config.lua

niyvim = require('niyvim')

-- Custom Plugins
niyvim.plugins = {
  { 'mfussenegger/nvim-dap-python' },
}

-- Custom Mappings
niyvim.mappings = {
  ['<leader>df'] = {
    mode = { 'n' },
    action = '<cmd>lua require("dap-python").test_class()<cr>',
    opts = { noremap = true, silent = true },
  },
}


niyvim.init = function() 
  dap_python = require('dap-python')

  dap_python.test_runner = 'pytest'
  dap_python.setup('~/.pyenv/shims/python')
end

return niyvim
```
