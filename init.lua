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
vim.g['test#python#runner'] = 'pytest'

-- Emmet
vim.g.user_emmet_leader_key = ','

-- Go
vim.g.go_def_mapping_enabled = 0

-- PEP8
vim.g.python_pep8_indent_multiline_string = -1
vim.g.python_pep8_indent_hang_closing = 0

-- Svelte
vim.g.svelte_preprocessors = {'typescript'}
