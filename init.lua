require('configs.lsp').setup()

for _, config_path in ipairs {
  'core.plugins',
  'core.mappings',
  'core.config',
  'core.autocmds',
} do
  local core, err = pcall(require, config_path)
  
  if not core then 
    vim.api.nvim_err_writeln("Cannot load " .. config_path .. "\n\n" .. err)
  end
end
