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

  -- Neo-tree
  ['<C-f>'] = {
    mode = { 'n' },
    action = ':Neotree action=focus reveal=true<cr>',
    opts = { noremap = true, silent = true },
  },
  ['<C-p>'] = {
    mode = { 'n' },
    action = ':Neotree float bufers<cr>',
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

  -- Tests
  ['<space>tn'] = {
    mode = { 'n' },
    action = '<cmd>lua require("neotest").run.run()<cr>',
    opts = { noremap = true, silent = true },
  },
  ['<space>tf'] = {
    mode = { 'n' },
    action = '<cmd>lua require("neotest").run.run(vim.fn.expand("%"))<cr>',
    opts = { noremap = true, silent = true },
  },
  ['<space>ts'] = {
    mode = { 'n' },
    action = '<cmd>lua require("neotest").summary.toggle()<cr>',
    opts = { noremap = true, silent = true },
  },

  -- WhichKey
  ['<space>?'] = {
    mode = { 'n' },
    action = ':WhichKey<cr>',
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
