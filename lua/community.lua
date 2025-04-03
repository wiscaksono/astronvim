-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- PACK
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.go" },
  -- { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.astro" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.prisma" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.zig" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.python" },
  -- { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.laravel" },
  { import = "astrocommunity.pack.templ" },
  -- { import = "astrocommunity.pack.java" },
  -- { import = "astrocommunity.lsp.nvim-java" },
  { import = "astrocommunity.pack.swift" },
  -- COLORSCHEME
  { import = "astrocommunity.colorscheme.oldworld-nvim" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  -- EDITING SUPPORT
  { import = "astrocommunity.editing-support.vim-visual-multi" },
  -- { import = "astrocommunity.editing-support.conform-nvim" },
  -- MISC
  -- { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },
  { import = "astrocommunity.media.vim-wakatime" },
  { import = "astrocommunity.programming-language-support.rest-nvim" },
  { import = "astrocommunity.recipes.telescope-lsp-mappings" },
  { import = "astrocommunity.recipes.heirline-mode-text-statusline" },
  { import = "astrocommunity.search.grug-far-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.fuzzy-finder.fzf-lua" },
}
