return {
  "vyfor/cord.nvim",
  version = "^2",
  build = ":Cord update",
  event = "VeryLazy",
  opts = {
    log_level = vim.log.levels.OFF,
    editor = {
      client = "neovim",
      tooltip = "VSCode Suck!",
    },
    display = {
      theme = "default",
      flavor = "dark",
      view = "full",
      swap_fields = false,
      swap_icons = false,
    },
    timestamp = {
      enabled = false,
      reset_on_idle = false,
      reset_on_change = false,
    },
    idle = {
      enabled = false,
      timeout = 60000,
      show_status = false,
      ignore_focus = false,
      unidle_on_focus = true,
      smart_idle = true,
      details = "Idle",
      tooltip = "💤",
    },
    text = {
      workspace = function(opts) return "In " .. opts.workspace end,
      viewing = function(opts) return "Viewing " .. opts.filename end,
      editing = function(opts) return "Editing " .. opts.filename end,
      file_browser = function(opts) return "Browsing files in " .. opts.name end,
      plugin_manager = function(opts) return "Managing plugins in " .. opts.name end,
      lsp = function(opts) return "Configuring LSP in " .. opts.name end,
      docs = function(opts) return "Reading " .. opts.name end,
      vcs = function(opts) return "Committing changes in " .. opts.name end,
      notes = function(opts) return "Taking notes in " .. opts.name end,
      debug = function(opts) return "Debugging in " .. opts.name end,
      test = function(opts) return "Testing in " .. opts.name end,
      diagnostics = function(opts) return "Fixing problems in " .. opts.name end,
      games = function(opts) return "Playing " .. opts.name end,
      terminal = function(opts) return "Running commands in " .. opts.name end,
      dashboard = "Home",
    },
    buttons = {
      {
        label = "Don't click this",
        url = "https://youtu.be/dQw4w9WgXcQ?si=hHKS2KdpoGCjg61f",
      },
    },
    advanced = {
      plugin = {
        debounce = {
          delay = 50,
          interval = 750,
        },
      },
    },
  },
}
