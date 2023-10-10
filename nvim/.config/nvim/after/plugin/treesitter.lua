-- Treesitter
local ts = require("nvim-treesitter.configs")
---@diagnostic disable-next-line: missing-fields
ts.setup({
  ensure_installed = {
    "c", "cpp", "objc", "make",
    "lua", "vim",
    "python", "php",
    "javascript", "html", "css", "json5",
    "svelte", "jsdoc", "scss",
    "rust", "sql", "regex", "fish", "bash",
    "markdown", "rst", "csv",
    "xml", "v", "typescript", "toml",
  },
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true },
})
