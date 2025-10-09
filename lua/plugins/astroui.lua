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
    colorscheme = "nightfox",
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      init = { -- This table overrides highlights in all themes
        -- transparent background
        Normal = { bg = "none" },
        NormalFloat = { bg = "none" },
        -- FloatBorder = { bg = "none" },
        Pmenu = { bg = "none" },
        Terminal = { bg = "none" },
        EndOfBuffer = { bg = "none" },
        FoldColumn = { bg = "none" },
        Folded = { bg = "none" },
        SignColumn = { bg = "none" },
        NormalNC = { bg = "none" },
        WhichKeyFloat = { bg = "none" },
        -- TelescopeBorder = { bg = "none" },
        TelescopeNormal = { bg = "none" },
        -- TelescopePromptBorder = { bg = "none" },
        TelescopePromptTitle = { bg = "none" },

        -- transparent background for neotree
        NeoTreeNormal = { bg = "none" },
        NeoTreeNormalNC = { bg = "none" },
        NeoTreeVertSplit = { bg = "none" },
        NeoTreeWinSeparator = { bg = "none", fg = "none" },
        NeoTreeEndOfBuffer = { bg = "none" },

        -- transparent background for nvim-tree
        NvimTreeNormal = { bg = "none" },
        NvimTreeVertSplit = { bg = "none" },
        NvimTreeEndOfBuffer = { bg = "none" },

        -- transparent notify background
        NotifyINFOBody = { bg = "none" },
        NotifyERRORBody = { bg = "none" },
        NotifyWARNBody = { bg = "none" },
        NotifyTRACEBody = { bg = "none" },
        NotifyDEBUGBody = { bg = "none" },
        NotifyINFOTitle = { bg = "none" },
        NotifyERRORTitle = { bg = "none" },
        NotifyWARNTitle = { bg = "none" },
        NotifyTRACETitle = { bg = "none" },
        NotifyDEBUGTitle = { bg = "none" },
        -- NotifyINFOBorder = { bg = "none" },
        -- NotifyERRORBorder = { bg = "none" },
        -- NotifyWARNBorder = { bg = "none" },
        -- NotifyTRACEBorder = { bg = "none" },
        -- NotifyDEBUGBorder = { bg = "none" },

        -- transparent background for tabline
        TabLine = { bg = "none" },
        TabLineSel = { bg = "none" },
        TabLineFill = { bg = "none" },

        StatusLine = { bg = "none", fg = "none" },
      },
      astrodark = { -- A table of overrides/changes when applying the astrotheme theme
        -- Normal = { bg = "#000000" }, -- Example: Set the background to black for the astrodark theme
      },
    },
    -- Icons can be configured throughout the interface
    icons = {
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
