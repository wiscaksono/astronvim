return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      opts.tabline = nil -- remove tabline
      return opts
    end,
  },
  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      opts.winbar = nil
      return opts
    end,
  },
}
