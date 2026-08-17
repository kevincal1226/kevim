vim.pack.add {
  'https://github.com/rebelot/kanagawa.nvim',
}

require('kanagawa').setup {
  compile = false,
  undercurl = true,
  commentStyle = { italic = false },
  keywordStyle = { italic = false },
  statementStyle = { bold = true },
  transparent = false,
  dimInactive = false,
  terminalColors = true,
  overrides = function(colors)
    return {
      Function = { fg = colors.palette.lotusTeal2 },
      Normal = { bg = '#1a1c24' },
      YankHighlight = { bg = '#2d2d2d', fg = colors.fg },
      Visual = { bg = '#4a4a4a' },
      VisualNOS = { bg = '#4a4a4a' },
      Pmenu = { bg = '#242445', fg = '#ffffff' },
      PmenuSel = { bg = '#191524', fg = '#ffffff', bold = true },
      SignColumn = { bg = '#2b2b2b' },
      LineNr = { bg = '#1b1d24', fg = '#b0b0b0' },
      CursorLineNr = { bg = '#1a1c24', fg = '#00aaff', bold = true, italic = true },
      StatusLine = { bg = '#007acc', fg = '#ffffff', bold = true },
    }
  end,
  theme = 'wave',
  background = { dark = 'wave', light = 'wave' },
}

vim.cmd.colorscheme 'kanagawa'
