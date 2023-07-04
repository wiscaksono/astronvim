return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.utility.transparent-nvim", enabled = true },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.tailwindcss" },
  -- { import = "astrocommunity.pack.go" },
  -- { import = "astrocommunity.pack.vue" },
  -- { import = "astrocommunity.pack.astro" },
  -- { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.media.vim-wakatime" },
  { import = "astrocommunity.completion.copilot-lua" },
  {
    -- further customize the options set by the community
    "copilot.lua",
    opts = {
      suggestion = {
        keymap = {
          accept = "<C-l>",
          accept_word = false,
          accept_line = false,
          next = "<C-.>",
          prev = "<C-,>",
          dismiss = "<C/>",
        },
      },
    },
  },
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = 120,
      disabled_filetypes = { "help" },
    },
  },
}
