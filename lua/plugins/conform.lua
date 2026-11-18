---@type LazySpec
return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      java = { "google-java-format" },
    },
    formatters = {
      ["google-java-format"] = {
        timeout_ms = 10000,
      },
    },
    format_on_save = function(bufnr)
      if vim.bo[bufnr].filetype == "xml" then return nil end
      if vim.F.if_nil(vim.b[bufnr].autoformat, vim.g.autoformat, true) then
        return { lsp_format = "fallback" }
      end
    end,
  },
}
