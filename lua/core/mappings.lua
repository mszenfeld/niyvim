local default = {
  -- Base mappings
  ['jj'] = {
    mode = { 'i' },
    action = '<Esc>',
    opts = {},
  },
  ['qq'] = {
    mode = { 'n' },
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

  -- Neo-tree
  ['<C-f>'] = {
    mode = { 'n' },
    action = ':Neotree action=focus reveal=true<cr>',
    opts = { noremap = true, silent = true },
  },
  ['<C-p>'] = {
    mode = { 'n' },
    action = ':Neotree float buffers<cr>',
    opts = { noremap = true, silent = true },
  },

  -- Aerial
  ['<leader>a'] = {
    mode = { 'n' },
    action = ':AerialToggle<cr>',
    opts = { silent = true },
  },

  -- Telescope
  ['<leader>fi'] = {
    mode = { 'n' },
    action = '<cmd>Telescope find_files<cr>',
    opts = { noremap = true, silent = true },
  },
  ['<leader>rg'] = {
    mode = { 'n' },
    action = '<cmd>Telescope live_grep<cr>',
    opts = { noremap = true, silent = true },
  },

  -- Sessions
  ['<leader>ss'] = {
    mode = { 'n' },
    action = ':SessionSave<cr>',
    opts = { silent = true },
  },
  ['<leader>sl'] = {
    mode = { 'n' },
    action = ':SessionLoad<cr>',
    opts = { silent = true },
  },

  -- WhichKey
  ['<space>?'] = {
    mode = { 'n' },
    action = ':WhichKey<cr>',
    opts = { silent = true },
  },

  -- Database
  ['<leader>db'] = {
    mode = { 'n' },
    action = ':DBUIToggle<cr>',
    opts = { silent = true },
  },
}

local set_mappings = function(mappings)
  for key, mapping in pairs(mappings) do 
    for _, mode in ipairs(mapping.mode) do
      vim.api.nvim_set_keymap(mode, key, mapping.action, mapping.opts)
    end
  end
end

niyvim = require('config')

set_mappings(default)
set_mappings(niyvim.mappings)
