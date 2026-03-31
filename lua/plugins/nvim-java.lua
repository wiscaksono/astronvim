return {
  "nvim-java/nvim-java",
  ft = "java",
  opts = {
    java_debug_adapter = { enable = false },
    jdk = { auto_install = false },
  },
  specs = {
    {
      "AstroNvim/astrolsp",
      optional = true,
      opts = {
        handlers = {
          jdtls = function(server)
            require("lazy").load({ plugins = { "nvim-java" } })
            vim.lsp.enable(server)
          end,
        },
      },
    },
  },
}
