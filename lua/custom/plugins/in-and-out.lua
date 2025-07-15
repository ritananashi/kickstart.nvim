-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'ysmb-wtsg/in-and-out.nvim',
  keys = {
    {
      '<C-CR>',
      function()
        require('in-and-out').in_and_out()
      end,
      mode = 'i',
    },
  },
}
