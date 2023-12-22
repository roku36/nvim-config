return {
  "vim-skk/skkeleton",
  dependencies = {
    "vim-denops/denops.vim",
  },
  config = function()
    vim.keymap.set("i", "<C-j>", "<Plug>(skkeleton-toggle)")
  end,
}
