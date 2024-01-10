local bufnr = vim.api.nvim_get_current_buf()
vim.keymap.set(
  "n",
  "<leader>a",
  function()
    vim.cmd.RustLsp('codeAction')
  end,
  { silent = true, buffer = bufnr }
)

-- vim.lsp.inlay_hint.enable(bufnr, true)

vim.cmd [[
  hi LspInlayHint guibg=Gray guifg=Black
]]
