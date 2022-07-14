niyvim = require('niyvim')

-- Custom Mappings
niyvim.mappings = {
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
}

return niyvim
