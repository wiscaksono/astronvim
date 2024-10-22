-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  "supermaven-inc/supermaven-nvim",
  opts = function(_, config)
    config.keymaps = {
      accept_suggestion = "<C-l>",
    }
    return config
  end,
}
