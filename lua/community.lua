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
  -- { import = "astrocommunity.pack.templ" },
  -- { import = "astrocommunity.pack.rust" },
  -- { import = "astrocommunity.pack.elixir-phoenix" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.prisma" },
  -- { import = "astrocommunity.pack.vue" },
  -- { import = "astrocommunity.pack.svelte" },
  -- { import = "astrocommunity.pack.zig" },
  { import = "astrocommunity.pack.markdown" },
  -- { import = "astrocommunity.pack.mdx" },
  -- { import = "astrocommunity.pack.php" },
  -- { import = "astrocommunity.pack.python" },
  -- COLORSCHEME
  { import = "astrocommunity.colorscheme.oldworld-nvim" },
  -- EDITING SUPPORT
  { import = "astrocommunity.editing-support.vim-visual-multi" },
  -- LSP
  { import = "astrocommunity.lsp.nvim-java" },
  { import = "astrocommunity.lsp.actions-preview-nvim" },
  -- MISC
  { import = "astrocommunity.completion.copilot-lua" },
  -- { import = "astrocommunity.completion.avante-nvim" },
  { import = "astrocommunity.media.vim-wakatime" },
  -- { import = "astrocommunity.recipes.auto-session-restore" },
}
