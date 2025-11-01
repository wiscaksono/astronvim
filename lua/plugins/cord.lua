return {
  "vyfor/cord.nvim",
  version = "^2",
  build = ":Cord update",
  event = "VeryLazy",
  opts = {
    usercmds = true, -- Enable user commands
    log_level = "off", -- One of 'trace', 'debug', 'info', 'warn', 'error', 'off'
    timer = {
      interval = 5000, -- Interval between presence updates in milliseconds (min 500)
      reset_on_idle = false, -- Reset start timestamp on idle
      reset_on_change = false, -- Reset start timestamp on presence change
    },
    editor = {
      image = nil, -- Image ID or URL in case a custom client id is provided
      client = "neovim", -- vim, neovim, lunarvim, nvchad, astronvim or your application's client id
      tooltip = "VSCode Suck!", -- Text to display when hovering over the editor's image
    },
    display = {
      show_time = false, -- Display start timestamp
      show_repository = false, -- Display 'View repository' button linked to repository url, if any
      show_cursor_position = false, -- Display line and column number of cursor's position
      swap_fields = false, -- If enabled, workspace is displayed first
      swap_icons = false, -- If enabled, editor is displayed on the main image
      workspace_blacklist = {}, -- List of workspace names that will hide rich presence
    },
    lsp = {
      show_problem_count = false, -- Display number of diagnostics problems
      severity = 1, -- 1 = Error, 2 = Warning, 3 = Info, 4 = Hint
      scope = "workspace", -- buffer or workspace
    },
    idle = {
      enable = false, -- Enable idle status
      show_status = false, -- Display idle status, disable to hide the rich presence on idle
      timeout = 60000, -- Timeout in milliseconds after which the idle status is set, 0 to display immediately
      disable_on_focus = false, -- Do not display idle status when neovim is focused
      text = "Idle", -- Text to display when idle
      tooltip = "💤", -- Text to display when hovering over the idle image
    },
    hooks = {
      ready = nil,
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
        label = "Don't click this", -- Text displayed on the button
        url = "https://youtu.be/dQw4w9WgXcQ?si=hHKS2KdpoGCjg61f", -- URL where the button leads to ('git' = automatically fetch Git repository URL)
      },
    },
  },
}
