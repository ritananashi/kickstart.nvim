-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'rgroli/other.nvim',
    config = function()
      require('other-nvim').setup {
        mappings = {
          'livewire',
          'angular',
          'laravel',
          'rails',
          'golang',
          'python',
          'react',
          'rust',
          'elixir',
          'clojure',
        },
      }

      vim.api.nvim_set_keymap('n', '<leader>ll', '<cmd>:Other<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>ltn', '<cmd>:OtherTabNew<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>lp', '<cmd>:OtherSplit<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>lv', '<cmd>:OtherVSplit<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>lc', '<cmd>:OtherClear<CR>', { noremap = true, silent = true })

      -- Context specific bindings
      vim.api.nvim_set_keymap('n', '<leader>lt', '<cmd>:Other test<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>ls', '<cmd>:Other scss<CR>', { noremap = true, silent = true })
    end,
  },
}
