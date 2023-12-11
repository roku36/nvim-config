return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup {
        highlights = {
          NormalFloat = {
            guibg = "#220000",
          },
          FloatBorder = {
            guibg = "#220000",
          }
        }
      }
      vim.keymap.set('n', ';', [[<Cmd>ToggleTerm direction=float<CR>]], { desc = "Toggle terminal" })
      vim.keymap.set('t', 'jk', [[<Cmd>ToggleTerm<CR>]], { desc = "Toggle terminal" })
    end
  }
}
