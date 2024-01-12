return {
  {
    "QuickGD/quickgd.nvim",
    ft = { "gdshader", "gdshaderinc" },
    cmd = {
      "GodotRun",
      "GodotRunLast",
      "GodotStart",
    },
    init = function()
      vim.filetype.add {
        extension = {
          gdshaderinc = "gdshaderinc",
        },
      }
    end,
    config = true,
  },
}
