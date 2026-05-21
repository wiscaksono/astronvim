return {
  "nvim-java/nvim-java",
  ft = "java",
  opts = {
    java_test = { enable = false },
    java_debug_adapter = { enable = false },
    spring_boot_tools = { enable = true },
    lombok = { enable = true },
    jdk = { auto_install = false },
  },
  specs = {
    {
      "AstroNvim/astrolsp",
      optional = true,
      opts = {
        servers = { "jdtls" },
        handlers = {
          jdtls = function(server)
            require("lazy").load { plugins = { "nvim-java" } }
            vim.lsp.enable(server)
          end,
        },
      },
    },
  },
}
