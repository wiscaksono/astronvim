return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        "    |\\__/,|   (`\\ ",
        "  _.|o o  |_   ) )",
        "-(((---(((--------",
      }
      return opts
    end,
  },
}
