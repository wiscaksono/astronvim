-- github-nvim-theme setup. AstroCommunity only declares the plugin, and AstroUI
-- loads the colorscheme before lazy.nvim would run `opts`, so the options go
-- through `init` to be in place before the first colorscheme load.
return {
  "projekt0n/github-nvim-theme",
  lazy = false,
  priority = 1000,
  init = function()
    require("github-theme").setup({
      options = {
        transparent = true,
        terminal_colors = true,
        dim_inactive = false,
      },
    })
  end,
}
