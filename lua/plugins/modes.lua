return {
  "LazyVim/LazyVim",
  {
    "mvllow/modes.nvim",
    tag = "v0.2.1",
    config = function()
      require("modes").setup {
        colors = {
          bg = "", -- Optional bg param, defaults to Normal hl group
          copy = "#F5E0DC", -- Rosewater
          delete = "#F28F8F", -- Red
          insert = "#ABE9B3", -- Green
          visual = "#DDB6F2", -- Lavender
        },

        -- Set opacity for cursorline and number background
        line_opacity = 0.15,

        -- Enable cursor highlights
        set_cursor = true,

        -- Enable cursorline initially, and disable cursorline for inactive windows
        -- or ignored filetypes
        set_cursorline = true,

        -- Enable line number highlights to match cursorline
        set_number = true,

        -- Disable modes highlights in specified filetypes
        -- Please PR commonly ignored filetypes
        ignore_filetypes = { "NvimTree", "TelescopePrompt" },
      }
    end,
  },
}
