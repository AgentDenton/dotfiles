local M = {}
M.theme = function()
  local colors = {
    nord1  = '#3B4252',
    nord3  = '#2e3440',
    nord5  = '#E5E9F0',
    nord6  = '#ECEFF4',
    nord7  = '#88C0D0',
    nord8  = '#88C0D0',
    nord13 = '#EBCB8B',
  }

  return {
    normal = {
      a = { fg = colors.nord1, bg = colors.nord8, gui = 'bold' },
      b = { fg = colors.nord5, bg = colors.nord1 },
      c = { fg = colors.nord5, bg = colors.nord3 },
    },
    insert = { a = { fg = colors.nord1, bg = colors.nord8, gui = 'bold' } },
    visual = { a = { fg = colors.nord1, bg = colors.nord7, gui = 'bold' } },
    replace = { a = { fg = colors.nord1, bg = colors.nord13, gui = 'bold' } },
    inactive = {
      a = { fg = colors.nord1, bg = colors.nord8, gui = 'bold' },
      b = { fg = colors.nord5, bg = colors.nord1 },
      c = { fg = colors.nord5, bg = colors.nord1 },
    },
  }
end
return M
