local M = {}

function M.toggle_fold()
  if vim.g.fold_method == 0 then
    vim.wo.foldmethod = 'syntax'
    vim.g.fold_method = 1
  else
    vim.wo.foldmethod = 'marker'
    vim.g.fold_method = 0
  end
end

return M
