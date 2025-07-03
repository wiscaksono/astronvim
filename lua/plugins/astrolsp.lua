return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    file_operations = {
      timeout = 30000, -- default timeout in ms for completing LSP operations
      operations = { -- enable all of the file operations
        willCreate = true,
        didCreate = true,
        willRename = true,
        didRename = true,
        willDelete = true,
        didDelete = true,
      },
    },
  },
}
