require('plugins')
require('functions')
require('maps')
require('autocmds')
require('settings')

require('configs/lsp').setup()

vim.api.nvim_command('colorscheme nord')

-- Configuration

vim.g.fold_method = 1

-- Tests
vim.g['test#strategy'] = 'dispatch'

-- Emmet
vim.g.user_emmet_leader_key = ','

local config_file = io.open('config.lua', r)

if config_file ~= nil and io.close(config_file) then
  require('config')
end
