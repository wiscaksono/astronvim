return {
  { "typicode/bg.nvim", lazy = false },
  { "Equilibris/nx.nvim", depends = { "nvim-telescope/telescope.nvim" }, opts = {} },
  {
    "vuki656/package-info.nvim",
    ft = "json",
    dependencies = "MunifTanjim/nui.nvim",
    opts = {},
  },
}
