-- Ctrl+hjkl moves between Neovim splits. At the edge of the layout the key
-- goes to Rex, and only when no Rex pane sits that way does Neovim wrap.
local function rex_focus(direction)
  if vim.fn.executable "rex" == 0 then return false end
  local cmd = { "rex" }
  if vim.env.REX_SESSION and vim.env.REX_SESSION ~= "" then cmd = { "rex", "-s", vim.env.REX_SESSION } end
  vim.list_extend(cmd, { "do", "nav_focus", "direction=" .. direction, "--json" })
  local out = vim.fn.system(cmd)
  if vim.v.shell_error ~= 0 then return false end
  local ok, res = pcall(vim.json.decode, out)
  return ok and type(res) == "table" and res.moved == true
end

---@type LazySpec
return {
  "mrjones2014/smart-splits.nvim",
  opts = function(_, opts)
    opts.move = opts.move or {}
    -- Called only once no Neovim window and no multiplexer can take the move,
    -- so this is the point where the Rex pane next door wins or we wrap.
    opts.move.at_edge = function(ctx)
      if rex_focus(ctx.direction) then return end
      ctx.wrap()
    end
    return opts
  end,
}
