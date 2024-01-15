local bufnr = vim.api.nvim_get_current_buf()

vim.lsp.inlay_hint.enable(bufnr, true)

vim.cmd [[
  hi LspInlayHint guibg=Gray guifg=Black
]]

vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
