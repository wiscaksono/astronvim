-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    colorscheme = "catppuccin-mocha",
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      init = { -- This table overrides highlights in all themes
        -- Normal = { bg = "#1E1E2E" }, -- Example: Set the default background to black
        -- NeoTreeNormal = { bg = "#1E1E2E" }, -- <-- Sidebar background color
        -- NeoTreeNormalNC = { bg = "#1E1E2E" }, -- <-- Non-current sidebar
        -- NeoTreeEndOfBuffer = { bg = "#1E1E2E" }, -- <-- End of buffer color
        -- NeoTreeWinSeparator = { fg = "#181825" }, -- <-- Window separator color
      },
      astrodark = { -- A table of overrides/changes when applying the astrotheme theme
        -- Normal = { bg = "#000000" }, -- Example: Set the background to black for the astrodark theme
      },
    },
    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      -- LSPLoading1 = "⠋",
      -- LSPLoading2 = "⠙",
      -- LSPLoading3 = "⠹",
      -- LSPLoading4 = "⠸",
      -- LSPLoading5 = "⠼",
      -- LSPLoading6 = "⠴",
      -- LSPLoading7 = "⠦",
      -- LSPLoading8 = "⠧",
      -- LSPLoading9 = "⠇",
      -- LSPLoading10 = "⠏",
      LSPLoading1 = "",
      LSPLoading2 = "",
      LSPLoading3 = "",
      LSPLoading4 = "",
      LSPLoading5 = "",
      LSPLoading6 = "",
      LSPLoading7 = "",
      LSPLoading8 = "",
      LSPLoading9 = "",
      LSPLoading10 = "",
      LSPLoading11 = "",
      LSPLoading12 = "",
      LSPLoading13 = "",
      LSPLoading14 = "",
      LSPLoading15 = "",
      LSPLoading16 = "",
      LSPLoading17 = "",
      LSPLoading18 = "",
      LSPLoading19 = "",
      LSPLoading20 = "",
      LSPLoading21 = "",
      LSPLoading22 = "",
      LSPLoading23 = "",
      LSPLoading24 = "",
      LSPLoading25 = "",
    },
  },
}
