vim.api.nvim_create_autocmd('ColorScheme', {
  callback = function()
    local groups = {
      'Normal',
      'NormalNC',
      'NormalFloat',
      'FloatBorder',
      'SignColumn',
      'FoldColumn',
      'CursorLine',
      'CursorLineNr',
      'LineNr',
      'EndOfBuffer',
      'StatusLine',
      'StatusLineNC',
      'TabLine',
      'TabLineFill',
      'TabLineSel',
    }

    for _, group in ipairs(groups) do
      vim.api.nvim_set_hl(0, group, { bg = 'NONE' })
    end
  end,
})

vim.cmd 'doautocmd ColorScheme'
