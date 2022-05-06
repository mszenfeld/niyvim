require('plugins')
require('functions')
require('maps')
require('autocmds')
require('settings')

vim.api.nvim_command('colorscheme nord')

-- Configuration

vim.g.fold_method = 0

-- Tests
vim.g['test#strategy'] = 'dispatch'
vim.g['test#python#runner'] = 'pytest'

-- NeoVide
vim.g.neovide_floating_opacity = 0.5
vim.g.neovide_cursor_vfx_mode = 'railgun'

-- Emmet
vim.g.user_emmet_leader_key = ','

