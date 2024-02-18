return {
  {
    'Bekaboo/dropbar.nvim',
    config = function()
      vim.keymap.set('n', '<leader>dp', require("dropbar.api").pick, { desc = 'Open Dropbar' })
    end
  }
}
