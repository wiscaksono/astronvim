if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "User AstroFile",
  opts = {
    suggestion = {
      auto_trigger = true,
      debounce = 150,
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
}
