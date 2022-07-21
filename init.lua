require('configs/lsp').setup()

require('core.plugins').load()
require('core.mappings').load()

require('autocmds')
require('settings')

vim.api.nvim_command('colorscheme nord')

vim.g.db_ui_save_location = '~/.config/db_ui'


require('config').init()
