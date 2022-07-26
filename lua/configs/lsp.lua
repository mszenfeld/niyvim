local M = {}

function M.setup()
  local lsp = require('lsp-zero')

  lsp.preset('recommended')
  lsp.nvim_workspace()
  
  lsp.set_preferences({
    set_lsp_keymaps = false
  })

  lsp.on_attach(function(client, bufnr)
    local bufopts = { noremap = true, silent = true, buffer = bufnr }

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'gy', require('telescope.builtin').lsp_type_definitions, bufopts)
    vim.keymap.set('n', 'gi', require('telescope.builtin').lsp_implementations, bufopts)
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, bufopts)

    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<Leader>rn', require("cosmic-ui").rename, bufopts)
    vim.keymap.set('n', '<Space>f', require('cosmic-ui').code_actions, bufopts)
    vim.keymap.set('n', '<Space>l', '<cmd>Telescope diagnostics bufnr=0<cr>', bufopts)
  end)

  lsp.setup()
end

return M
