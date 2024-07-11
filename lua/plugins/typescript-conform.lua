-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

local function biome_lsp_or_prettier(bufnr)
  local has_biome_lsp = vim.lsp.get_clients({
    bufnr = bufnr,
    name = "biome",
  })[1]
  if has_biome_lsp then return {} end
  local has_prettier = vim.fs.find({
    ".prettierrc",
    ".prettierrc.json",
    ".prettierrc.yml",
    ".prettierrc.yaml",
    ".prettierrc.json5",
    ".prettierrc.js",
    ".prettierrc.cjs",
    ".prettierrc.toml",
    "prettier.config.js",
    "prettier.config.cjs",
  }, { upward = true })[1]
  if has_prettier then return { "prettier", "prettierd" } end
  return { "biome" }
end

-- return {
--   "stevearc/conform.nvim",
--   opts = function(_, opts)
--     if not opts.formatters_by_ft then opts.formatters_by_ft = {} end
--     opts.log_level = vim.log.levels.INFO
--
--     opts.formatters_by_ft.typescript = biome_lsp_or_prettier
--     opts.formatters_by_ft.javascript = biome_lsp_or_prettier
--     opts.formatters_by_ft.javascriptreact = biome_lsp_or_prettier
--     opts.formatters_by_ft.typescriptreact = biome_lsp_or_prettier
--     opts.formatters_by_ft.json = { "biome" }
--     opts.formatters_by_ft.jsonc = { "biome" }
--     opts.formatters_by_ft.markdown = { "biome" }
--     opts.formatters_by_ft.toml = { "biome" }
--     --
--     -- opts.formatters_by_ft.typescript = { "prettierd", "prettier" }
--     -- opts.formatters_by_ft.javascript = { "prettierd", "prettier" }
--     -- opts.formatters_by_ft.javascriptreact = { "prettierd", "prettier" }
--     -- opts.formatters_by_ft.typescriptreact = { "prettierd", "prettier" }
--   end,
-- }

return {
  "stevearc/conform.nvim",
  event = "User AstroFile",
  cmd = "ConformInfo",
  specs = {
    { "AstroNvim/astrolsp", optional = true, opts = { formatting = { disabled = true } } },
    { "jay-babu/mason-null-ls.nvim", optional = true, opts = { methods = { formatting = false } } },
  },
  dependencies = {
    { "williamboman/mason.nvim", optional = true },
    {
      "AstroNvim/astrocore",
      opts = {
        options = { opt = { formatexpr = "v:lua.require'conform'.formatexpr()" } },
        commands = {
          Format = {
            function(args)
              local range = nil
              if args.count ~= -1 then
                local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
                range = {
                  start = { args.line1, 0 },
                  ["end"] = { args.line2, end_line:len() },
                }
              end
              require("conform").format { async = true, lsp_format = "fallback", range = range }
            end,
            desc = "Format buffer",
            range = true,
          },
        },
        mappings = {
          n = {
            ["<Leader>lf"] = { function() vim.cmd.Format() end, desc = "Format buffer" },
            ["<Leader>uf"] = {
              function()
                if vim.b.autoformat == nil then
                  if vim.g.autoformat == nil then vim.g.autoformat = true end
                  vim.b.autoformat = vim.g.autoformat
                end
                vim.b.autoformat = not vim.b.autoformat
                require("astrocore").notify(
                  string.format("Buffer autoformatting %s", vim.b.autoformat and "on" or "off")
                )
              end,
              desc = "Toggle autoformatting (buffer)",
            },
            ["<Leader>uF"] = {
              function()
                if vim.g.autoformat == nil then vim.g.autoformat = true end
                vim.g.autoformat = not vim.g.autoformat
                vim.b.autoformat = nil
                require("astrocore").notify(
                  string.format("Global autoformatting %s", vim.g.autoformat and "on" or "off")
                )
              end,
              desc = "Toggle autoformatting (global)",
            },
          },
        },
      },
    },
  },
  opts = {
    format_on_save = function(bufnr)
      if vim.g.autoformat == nil then vim.g.autoformat = true end
      local autoformat = vim.b[bufnr].autoformat
      if autoformat == nil then autoformat = vim.g.autoformat end
      if autoformat then return { timeout_ms = 5000, lsp_format = "fallback" } end
    end,

    formatters_by_ft = {
      typescript = biome_lsp_or_prettier,
      javascript = biome_lsp_or_prettier,
      javascriptreact = biome_lsp_or_prettier,
      typescriptreact = biome_lsp_or_prettier,
      json = { "biome" },
      jsonc = { "biome" },
      markdown = { "biome" },
      toml = { "biome" },
    },
  },
}
