vim.o.encoding = 'utf-8'
vim.o.undolevels = 100

vim.o.mouse = 'a'
vim.o.clipboard = 'unnamed'

vim.bo.modeline = false
vim.wo.wrap = false
vim.g.hidden = true

vim.wo.foldmethod = 'syntax'
vim.wo.number = true
vim.wo.signcolumn = 'yes'
vim.o.hlsearch = true
vim.o.laststatus = 2

-- Set tab width and convert tabs to spaces
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- Don't let Vim hide characters or make loud dings
vim.wo.conceallevel = 1
vim.o.errorbells = false

-- Space above/beside cursor from screen edges
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- Backups
vim.o.backup = false
vim.o.writebackup = false

-- Give more space for displaying messages.
vim.o.cmdheight = 2

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.o.updatetime = 300

-- Don't pass messages to |ins-completion-menu|.
vim.o.shortmess = vim.o.shortmess .. 'c'

-- GUI
vim.o.termguicolors = true
vim.o.bg = 'dark'
vim.o.guifont = 'JetBrainsMono Nerd Font:h13'
