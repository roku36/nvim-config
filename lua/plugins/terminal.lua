return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup {}
      vim.keymap.set('n', ';', [[<Cmd>ToggleTerm<CR>]], { desc = "Toggle terminal" })
      vim.keymap.set('t', 'jk', [[<Cmd>ToggleTerm<CR>]], { desc = "Toggle terminal" })
    end
  }
}
