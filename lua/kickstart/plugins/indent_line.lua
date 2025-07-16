return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
    config = function()
      local highlight = {
        'RainbowRed',
        'RainbowYellow',
        'RainbowBlue',
        'RainbowOrange',
        'RainbowGreen',
        'RainbowViolet',
        'RainbowCyan',
      }
      local hooks = require 'ibl.hooks'
      -- create the highlight groups in the highlight setup hook, so they are reset
      -- every time the colorscheme changes
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, 'RainbowRed', { fg = '#f4b8e4' })
        vim.api.nvim_set_hl(0, 'RainbowYellow', { fg = '#E5C890' })
        vim.api.nvim_set_hl(0, 'RainbowBlue', { fg = '#8caaee' })
        vim.api.nvim_set_hl(0, 'RainbowOrange', { fg = '#ef9f76' })
        vim.api.nvim_set_hl(0, 'RainbowGreen', { fg = '#a6d189' })
        vim.api.nvim_set_hl(0, 'RainbowViolet', { fg = '#babbf1' })
        vim.api.nvim_set_hl(0, 'RainbowCyan', { fg = '#85c1dc' })
      end)

      require('ibl').setup { indent = { highlight = highlight } }
    end,
  },
}
