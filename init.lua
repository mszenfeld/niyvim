require('plugins')
require('functions')
require('autocmds')
require('settings')

require('configs/lsp').setup()

require('core.mappings').load()

vim.api.nvim_command('colorscheme nord')

-- Emmet
vim.g.user_emmet_leader_key = ','

-- DAP

dap = require('dap')

dap.defaults.fallback.terminal_win_cmd = '50vsplit new'
dap.defaults.fallback.focus_terminal = true

require('dap-go').setup()

dap_python = require('dap-python')

dap_python.test_runner = 'pytest'
dap_python.setup('~/.pyenv/shims/python')

-- Mapping

vim.api.nvim_set_keymap('n', '<Leader>dr', '<Cmd> lua require("dap").repl.toggle()<CR>', { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>d', '<Cmd> lua require("dap").continue()<CR>', { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>df', '<Cmd> lua require("dap-python").test_class()<CR>', { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', '<F10>', '<Cmd> lua require("dap").step_over()<CR>', { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', '<F11>', '<Cmd> lua require("dap").step_into()<CR>', { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', '<F12>', '<Cmd> lua require("dap").step_out()<CR>', { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', '<F6>', '<Cmd> lua require("dap").terminate()<CR>', { silent = true, noremap = true })

-- Configuration

vim.g.go_def_mapping_enabled = 0
vim.g.python_pep8_indent_multiline_string = -1
vim.g.python_pep8_indent_hang_closing = 0

vim.g.svelte_preprocessors = {'typescript'}
