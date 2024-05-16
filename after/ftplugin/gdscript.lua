-- local port = os.getenv "GDScript_Port" or "6005"
-- local cmd = vim.lsp.rpc.connect("127.0.0.1", port)
-- local pipe = "/tmp/godot.pipe" -- I use /tmp/godot.pipe
--
-- vim.lsp.start {
-- 	name = "Godot",
-- 	cmd = cmd,
-- 	filetypes = { "gdscript" },
-- 	root_dir = vim.fs.dirname(vim.fs.find({ "project.godot", ".git" }, { upward = true })[1]),
-- 	on_attach = function(client, bufnr)
-- 		vim.api.nvim_command('echo serverstart("' .. pipe .. '")')
-- 	end,
-- }

-- set shiftwidth, expandtab, colorcolumn
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.colorcolumn = "80"

-- require('lspconfig').efm.setup {
--   on_attach = on_attach,
--   flags = {
--     debounce_text_changes = 150,
--   },
--
--   init_options = { documentFormatting = true },
--   settings = {
--     rootMarkers = { ".git/" },
--     languages = {
--       gdscript = {
--         { formatCommand = "gdformat -l 80 -", formatStdin = true }
--       },
--     },
--   },
-- }
