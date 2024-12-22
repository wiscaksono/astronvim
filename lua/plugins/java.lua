if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  "nvim-java/nvim-java",
  lazy = true,
  opts = {
    settings = {
      java = {
        configuration = {
          runtimes = {
            {
              name = "JavaSE-11",
              path = "~/.sdkman/candidates/java/11.0.23-tem",
            },
            {
              name = "JavaSE-15",
              path = "~/.sdkman/candidates/java/15.0.10-azul",
            },
            {
              name = "JavaSE-17",
              path = "~/.sdkman/candidates/java/17.0.11-tem",
            },
            {
              name = "JavaSE-21",
              path = "~/.sdkman/candidates/java/21.0.5-tem",
            },
          },
        },
      },
    },
  },
  specs = {
    { "mfussenegger/nvim-jdtls", optional = true, enabled = false },
    {
      "AstroNvim/astrolsp",
      optional = true,
      ---@type AstroLSPOpts
      opts = {
        servers = { "jdtls" },
        handlers = {
          jdtls = function(server, opts)
            require("lazy").load { plugins = { "nvim-java" } }
            require("lspconfig")[server].setup(opts)
          end,
        },
      },
    },
  },
}
