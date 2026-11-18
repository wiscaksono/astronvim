return {
  "folke/snacks.nvim",
  -- snacks has no `rex` terminal profile yet, but Rex is built on libghostty,
  -- so force the ghostty profile (kitty graphics + unicode placeholders).
  init = function() vim.env.SNACKS_GHOSTTY = "true" end,
  opts = {
    image = {
      -- AstroNvim disables inline images in documents by default
      doc = { enabled = true },
    },
  },
}
