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

function M.nord_semshi()
  vim.cmd([[
    hi semshiImported         guifg=#eceff4 cterm=bold      gui=bold
    hi semshiBuiltin          guifg=#88c0d0 cterm=italic    gui=italic
    hi semshiParameter        guifg=#e5e9f0 cterm=italic    gui=italic
    hi semshiParameterUnused  guifg=#e5e9f0 cterm=underline gui=underline
    hi semshiGlobal           guifg=#ffffff
    hi semshiSelected         guifg=#ffffff guibg=#4c566a
    hi semshiSelf             guifg=#81a1c1 cterm=bold      gui=bold
    hi semshiAttribute        guifg=#ffffff cterm=italic    gui=italic
  ]], true)
end

return M
