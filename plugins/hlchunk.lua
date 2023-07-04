return {
  "shellRaining/hlchunk.nvim",
  event = { "UIEnter" },
  opts = {
    chunk = {
      enable = true,
      use_treesitter = true,
      notify = true, -- notify if some situation(like disable chunk mod double time)
      exclude_filetypes = {
        aerial = true,
        dashboard = true,
      },
      support_filetypes = {
        "*.lua",
        "*.js",
        "*.jsx",
        "*.ts",
        "*.tsx",
      },
      chars = {
        horizontal_line = "─",
        vertical_line = "│",
        left_top = "╭",
        left_bottom = "╰",
        right_arrow = ">",
      },
      style = {
        { fg = "#74ADEA" },
      },
    },

    indent = {
      enable = true,
      use_treesitter = false,
      chars = {
        "│",
      },
      style = {
        { fg = "#4C5262" },
      },
    },

    line_num = {
      enable = false,
    },

    blank = {
      enable = false,
      chars = {
        "․",
      },
      style = {
        { fg = "#4C5262" },
      },
    },
  },
}
