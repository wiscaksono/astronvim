-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- PACK
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.astro" },
  { import = "astrocommunity.pack.templ" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.elixir-phoenix" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.prisma" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.zig" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.mdx" },
  { import = "astrocommunity.pack.php" },
  { import = "astrocommunity.pack.python" },
  -- COLORSCHEME
  { import = "astrocommunity.colorscheme.oldworld-nvim" },
  -- EDITING SUPPORT
  { import = "astrocommunity.editing-support.vim-visual-multi" },
  -- LSP
  { import = "astrocommunity.lsp.nvim-java" },
  { import = "astrocommunity.lsp.actions-preview-nvim" },
  -- { import = "astrocommunity.lsp.ts-error-translator-nvim" },
  -- MISC
  { import = "astrocommunity.completion.copilot-lua" },
  { import = "astrocommunity.media.vim-wakatime" },
  { import = "astrocommunity.recipes.auto-session-restore" },
  -- {
  --   "AstroNvim/astrolsp",
  --   opts = {
  --     config = {
  --       jdtls = {
  --         settings = {
  --           java = {
  --             configuration = {
  --               runtimes = {
  --                 {
  --                   name = "JavaSE-21",
  --                   path = "/Users/wiscaksono/.sdkman/candidates/java/21.0.3-tem",
  --                 },
  --                 {
  --                   name = "JavaSE-17",
  --                   path = "/Users/wiscaksono/.sdkman/candidates/java/17.0.11-tem",
  --                   default = true,
  --                 },
  --                 {
  --                   name = "JavaSE-11",
  --                   path = "/Users/wiscaksono/.sdkman/candidates/java/11.0.23-tem",
  --                 },
  --               },
  --             },
  --           },
  --         },
  --       },
  --     },
  --   },
  -- },
}
