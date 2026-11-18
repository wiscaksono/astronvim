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

            local group = vim.api.nvim_create_augroup("java_lsp", { clear = true })
            vim.api.nvim_create_autocmd("LspAttach", {
              group = group,
              callback = function(args)
                local client = vim.lsp.get_client_by_id(args.data.client_id)
                if client and client.name == "jdtls" then
                  --[[@diagnostic disable: inject-field]]
                  client.config.timeout_ms = 15000
                  --[[@diagnostic enable: inject-field]]
                  vim.lsp.codelens.enable(false, { bufnr = args.buf })
                end
              end,
            })
          end,
        },
      },
    },
  },
}
