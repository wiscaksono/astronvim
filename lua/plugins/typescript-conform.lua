local function biome_lsp_or_prettier(bufnr)
  -- This function determines whether to use Biome LSP or Prettier for formatting.
  -- It prioritizes Biome LSP if it's available. Otherwise, it checks for Prettier
  -- configuration files and uses Prettier if found.

  -- Check if Biome LSP is attached to the buffer.
  local has_biome_lsp = vim.lsp.get_clients({
    bufnr = bufnr,
    name = "biome",
  })[1]

  if has_biome_lsp then
    -- Biome LSP is available, so use it.
    return {} -- Return an empty table to use the LSP's formatting capabilities.
  end

  -- Biome LSP is not available, so check for Prettier configuration files.
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

  if has_prettier then
    -- Prettier configuration files were found, so use Prettier.
    return { "prettier", "prettierd" }
  end

  -- Neither Biome LSP nor Prettier is available, so use Biome CLI.
  return { "biome" }
end

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
                -- Toggle autoformatting for the current buffer.
                -- If vim.b.autoformat is nil, use the global setting (vim.g.autoformat).
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
                -- Toggle autoformatting globally.
                -- This also resets the buffer-local setting to nil, so that new buffers
                -- will use the global setting.
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
      -- This function determines whether to format the buffer on save.
      -- It checks both the global (vim.g.autoformat) and buffer-local (vim.b[bufnr].autoformat) settings.
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
