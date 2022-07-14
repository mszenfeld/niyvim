local M = {}

local default = {
  -- Base mappings
  ['jj'] = {
    mode = { 'i' },
    action = '<Esc>',
    opts = {},
  },
  ['qq'] = {
    mode = { 'i', 'n' },
    action = ':q!<cr>',
    opts = { noremap = true },
  },

  -- Windows switching
  ['<C-h>'] = {
    mode = { 'n' },
    action = ':wincmd h<cr>',
    opts = { silent = true },
  },
  ['<C-j>'] = {
    mode = { 'n' },
    action = ':wincmd j<cr>',
    opts = { silent = true },
  },
  ['<C-k>'] = {
    mode = { 'n' },
    action = ':wincmd k<cr>',
    opts = { silent = true },
  },
  ['<C-l>'] = {
    mode = { 'n' },
    action = ':wincmd l<cr>',
    opts = { silent = true },
  },
}

function M:load ()
  for key, mapping in pairs(default) do
    for _, mode in ipairs(mapping.mode) do
      vim.api.nvim_set_keymap(mode, key, mapping.action, mapping.opts)
    end
  end
end

return M
