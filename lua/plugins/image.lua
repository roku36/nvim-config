-- package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua;"
-- package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua;"
package.path = package.path .. ";/Users/roku/.luarocks/share/lua/5.1/?/init.lua;"
package.path = package.path .. ";/Users/roku/.luarocks/share/lua/5.1/?.lua;"

_G.open_image_under_cursor = function()
  local line = vim.api.nvim_get_current_line()
  local pattern = "%!%[.*%]%((.-)%)"
  local image_path = string.match(line, pattern)
  if image_path then
    -- 現在のファイルのディレクトリを取得
    local current_file_dir = vim.fn.expand('%:p:h') .. '/'
    local absolute_image_path = current_file_dir .. image_path

    -- ファイルの拡張子を取得
    local extension = image_path:match("^.+(%..+)$")

    -- ファイルの存在を確認
    local file = io.open(absolute_image_path, "r")
    if not file then
      -- ファイルが存在しない場合、対応するテンプレートファイルをコピー
      local template_path = vim.fn.expand("$HOME") .. "/template" .. extension
      os.execute(string.format("cp %s %s", vim.fn.shellescape(template_path), vim.fn.shellescape(absolute_image_path)))
    else
      file:close()
    end

    -- 画像の拡張子に応じて適切なアプリケーションで開く
    if extension == ".svg" then
      -- InkscapeでSVGを開く
      vim.cmd(string.format("!inkscape %s &", vim.fn.shellescape(absolute_image_path)))
    elseif extension == ".png" or extension == ".gif" then
      -- AsepriteでPNGまたはGIFを開く
      local aseprite_path =
      "/Users/roku/Library/Application Support/Steam/steamapps/common/Aseprite/Aseprite.app/Contents/MacOS/aseprite"
      vim.cmd(string.format("!%s %s &", vim.fn.shellescape(aseprite_path), vim.fn.shellescape(absolute_image_path)))
    end
  end
end

vim.api.nvim_set_keymap('n', 'gx', '<cmd>lua _G.open_image_under_cursor()<CR>', { noremap = true, silent = true })

return {
  {
    "3rd/image.nvim",
    event = "VeryLazy",
    dependencies = {
      {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
          require("nvim-treesitter.configs").setup({
            ensure_installed = { "markdown" },
            -- highlight = { enable = true },
            highlight = { enable = false },
          })
        end,
      },
    },
    opts = {
      backend = "kitty",
      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = false,
          download_remote_images = true,
          only_render_image_at_cursor = true,
          filetypes = { "markdown", "vimwiki" }, -- markdown extensions (ie. quarto) can go here
        },
      },
      max_width = nil,
      max_height = nil,
      max_width_window_percentage = nil,
      max_height_window_percentage = 50,
      kitty_method = "normal",
    },
  },
}
