-- Treesitter
local ts = require("nvim-treesitter.configs")
ts.setup({
  ensure_installed = {
    "c", "cpp",
    "lua", "vim",
    "python", "php",
    "javascript", "html", "css", "json",
    "rust",
    "markdown",
  },
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true },
})
