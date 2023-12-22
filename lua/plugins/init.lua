-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- {
  --   "echasnovski/mini.map",
  --   version = false,
  --   config = function()
  --     require('mini.map').setup()
  --     vim.keymap.set('n', 'mo', require('mini.map').toggle)
  --   end
  -- },
  {
    "karb94/neoscroll.nvim",
    config = function()
      require('neoscroll').setup {}
    end
  },
  {
    'gorbit99/codewindow.nvim',
    config = function()
      local codewindow = require('codewindow')
      codewindow.setup()
      codewindow.apply_default_keybinds()
    end,
  }
}
