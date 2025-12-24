-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    config = function()
      require('typescript-tools').setup {
        settings = {
          -- 低メモリ環境用の負荷軽減設定
          separate_diagnostic_server = false,
          publish_diagnostic_on = 'insert_leave',
          tsserver_max_memory = 1024,
          expose_as_code_action = 'all',
        },
      }
    end,
  },
}
