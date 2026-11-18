---@type LazySpec
return {
  {
    "AstroNvim/astrocore",
    opts = function(_, opts)
      opts.mappings = opts.mappings or {}
      opts.mappings.n = opts.mappings.n or {}

      -- Repository root of the current buffer, or the working directory.
      local function project_dir()
        local worktree = require("astrocore").file_worktree()
        return (worktree and worktree.toplevel) or vim.fn.getcwd()
      end

      -- Run a Rex action that opens a floating layer beside this terminal.
      local function run_rex_action(action)
        if vim.env.REX_BLOCK == nil or vim.fn.executable "rex" ~= 1 then return false end
        local ok, result = pcall(
          function() return vim.system({ "rex", "do", action, "dir=" .. project_dir() }):wait(3000) end
        )
        return ok and result ~= nil and result.code == 0
      end

      opts.mappings.n["<Leader>gg"] = {
        function()
          if not run_rex_action "lazygit_float" then
            require("astrocore").toggle_term_cmd { cmd = "lazygit", direction = "float" }
          end
        end,
        desc = "Lazygit (Rex floating)",
      }
    end,
  },
}
