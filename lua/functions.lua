local M = {}

function M.a2sync(action, args, time)
    local done = false
    local err = false
    local res = ''
    args = args or {}
    table.insert(args, function(e, r)
        if e ~= vim.NIL then
            err = true
        end
        if r ~= vim.NIL then
            res = r
        end
        done = true
    end)
    vim.fn.CocActionAsync(action, unpack(args))
    local wait_ret = vim.wait(time or 1000, function()
        return done
    end)
    err = err or not wait_ret
    if not wait_ret then
        res = 'timeout'
    end
    return err, res
end

function M.toggle_fold()
  if vim.g.fold_method == 0 then
    vim.wo.foldmethod = 'syntax'
    vim.g.fold_method = 1
  else
    vim.wo.foldmethod = 'marker'
    vim.g.fold_method = 0
  end
end

function M.show_documentation()
 local ft = vim.bo.ft
    if ft == 'help' then
        cmd(('sil! h %s'):format(fn.expand('<cword>')))
    else
        local err, res = M.a2sync('definitionHover')
        if err then
            if res == 'timeout' then
                vim.notify('Show documentation Timeout', vim.log.levels.WARN)
            end
            vim.cmd('norm! K')
        end
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
