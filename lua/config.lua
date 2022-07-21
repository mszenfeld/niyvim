niyvim = require('niyvim')

-- Custom Plugins
niyvim.plugins = {
  { 'leoluz/nvim-dap-go' },
  { 'mfussenegger/nvim-dap-python' },
  { 'othree/html5.vim'},
  { 'evanleck/vim-svelte' },
  { 'pangloss/vim-javascript' },
  { 'HerringtonDarkholme/yats.vim' },
  { 'fatih/vim-go' },
  { 'Vimjas/vim-python-pep8-indent' },
  { 'mattn/emmet-vim' },
  {
    'nvim-neotest/neotest',
    requires = {
      'nvim-neotest/neotest-python',
      'nvim-neotest/neotest-go',
      'antoinemadec/FixCursorHold.nvim',
    },
    config = function()
      require('neotest').setup({
        adapters = {
          require('neotest-python')({
            dap = { justMyCode = false },
            runner = 'pytest'
          }),
          require('neotest-go'),
        },
        diagnostic = {
          enabled = true,
        },
        summary = {
          enabled = true,
          follow = true,
          expend_errors = true,
        },
        status = {
          enabled = true,
        }
      })
    end
  },

  -- Copilot
  {
    'zbirenbaum/copilot.lua',
    event = {'VimEnter'},
    config = function()
      vim.defer_fn(function()
        require('copilot').setup({
          cmp = {
            enabled = true,
            method = 'getPanelCompletions',
          },
          panel = {
            enabled = false,
          },
          ft_disable = { 'dap-repl', 'markdown' },
          plugin_manager_path = vim.fn.stdpath('data') .. '/site/pack/packer',
          server_opts_overrides = {},
  	})
      end, 100)
    end
  },
  { 'zbirenbaum/copilot-cmp', module = 'copilot_cmp' },
}

-- Custom Mappings
niyvim.mappings = {
  -- DAP
  ['<leader>b'] = {
    mode = { 'n', 'i' },
    action = '<cmd>lua require("dap").toggle_breakpoint()<cr>',
    opts = { noremap = true, silent = true },
  },
  ['<leader>B'] = {
    mode = { 'n', 'i' },
    action = '<cmd>lua require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))<cr>',
    opts = { noremap = true, silent = true },
  },
  ['<leader>dr'] = {
    mode = { 'n' },
    action = '<cmd>lua require("dap").repl.toggle()<cr>',
    opts = { noremap = true, silent = true },
  },
  ['<leader>d'] = {
    mode = { 'n' },
    action = '<cmd>lua require("dap").continue()<cr>',
    opts = { noremap = true, silent = true },
  },
  ['<leader>df'] = {
    mode = { 'n' },
    action = '<cmd>lua require("dap-python").test_class()<cr>',
    opts = { noremap = true, silent = true },
  },
  ['<F10>'] = {
    mode = { 'n' },
    action = '<cmd>lua require("dap").step_over()<cr>',
    opts = { noremap = true, silent = true },
  },
  ['<F11>'] = {
    mode = { 'n' },
    action = '<cmd>lua require("dap").step_into()<cr>',
    opts = { noremap = true, silent = true },
  },
  ['<F12>'] = {
    mode = { 'n' },
    action = '<cmd>lua require("dap").step_out()<cr>',
    opts = { noremap = true, silent = true },
  },
  ['<F6>'] = {
    mode = { 'n' },
    action = '<cmd>lua require("dap").terminate()<cr>',
    opts = { noremap = true, silent = true },
  },
}

-- DAP

dap = require('dap')

dap.defaults.fallback.terminal_win_cmd = '50vsplit new'
dap.defaults.fallback.focus_terminal = true

require('dap-go').setup()

dap_python = require('dap-python')

dap_python.test_runner = 'pytest'
dap_python.setup('~/.pyenv/shims/python')

-- Configuration

vim.g.go_def_mapping_enabled = 0
vim.g.python_pep8_indent_multiline_string = -1
vim.g.python_pep8_indent_hang_closing = 0

vim.g.svelte_preprocessors = {'typescript'}

return niyvim
