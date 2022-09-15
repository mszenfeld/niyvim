local M = {}

function prequire(mod)
  local ok, err = pcall(require, mod)

  if not ok then
    return nil, err
  end

  return err
end

function M.setup()
  local lsp = prequire('lsp-zero') 

  if lsp then
    local lspkind = require('lspkind')

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

    lsp.setup_nvim_cmp({
      formatting = {
        format = lspkind.cmp_format({
          mode = 'symbol', -- show only symbol annotations
          maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
          symbol_map = { Copilot = "" },
        })
      },
      sources = {
        -- Copilot Source
        { name = "copilot", group_index = 2 },
        -- Other Sources
        { name = "nvim_lsp", group_index = 2 },
        { name = "path", group_index = 2 },
        { name = "luasnip", group_index = 2 },
      }
    })

    lsp.setup()
  end
end

return M
