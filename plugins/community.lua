return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.prisma" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.php" },
  { import = "astrocommunity.pack.svelte" },
  -- { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.gruvbox-nvim" },
  { import = "astrocommunity.color.transparent-nvim", enabled = true },
  { import = "astrocommunity.motion.harpoon" },
  { import = "astrocommunity.media.presence-nvim" },
  { import = "astrocommunity.media.vim-wakatime" },
  { import = "astrocommunity.programming-language-support.rest-nvim" },
  {
    "presence.nvim",
    opts = {
      auto_update = true,
      neovim_image_text = "Vscode for noobs",
      main_image = "file",
      client_id = "793271441293967371",
      log_level = nil,
      debounce_timeout = 10,
      enable_line_number = true,
      blacklist = {},
      buttons = {
        { label = "Please don't click!", url = "https://youtu.be/dQw4w9WgXcQ" },
      },
      file_assets = {},
      show_time = false,
      editing_text = "Editing %s",
      file_explorer_text = "Browsing %s",
      git_commit_text = "Committing changes",
      plugin_manager_text = "Managing plugins",
      reading_text = "Reading %s",
      workspace_text = "Working on %s",
      line_number_text = "Line %s out of %s",
    },
  },
  { import = "astrocommunity.completion.copilot-lua" },
  {
    "copilot.lua",
    opts = {
      suggestion = {
        keymap = {
          accept = "<C-l>",
          accept_word = false,
          accept_line = false,
          next = "<C-.>",
          prev = "<C-,>",
          dismiss = "<C/>",
        },
      },
    },
  },
  {
    "gruvbox.nvim",
    opts = {
      terminal_colors = true, -- add neovim terminal colors
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true, -- invert background for search, diffs, statuslines and errors
      contrast = "", -- can be "hard", "soft" or empty string
      palette_overrides = {},
      overrides = {
        StatusLine = { bg = "#343535", fg = "#B59B81" },
      },
      dim_inactive = false,
      transparent_mode = true,
    },
  },
}
