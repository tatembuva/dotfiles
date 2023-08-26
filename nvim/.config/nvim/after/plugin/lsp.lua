-- LSP
-- Capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
-- On Attach
local on_attach = function(_, bufnr)
    local bufmap = function(kb , fn)
      vim.keymap.set('n', kb, fn, {noremap=true, silent=true, buffer=bufnr})
    end
    -- Buffer Rename
    bufmap('<leader>r', vim.lsp.buf.rename)
    -- GoTo Declaration
    bufmap('gD', vim.lsp.buf.declaration)
    -- GoTo Definition
    bufmap('gd', vim.lsp.buf.definition)
    -- GoTo Implementation
    bufmap('gi', vim.lsp.buf.implementation)
    -- Hover Hint
    bufmap('K', vim.lsp.buf.hover)
    -- Code Action 
    bufmap('<leader>a', vim.lsp.buf.code_action)

    -- Telescope
    bufmap('gr', require('telescope.builtin').lsp_references)
    bufmap('<leader>s', require('telescope.builtin').lsp_document_symbols)
    bufmap('<leader>S', require('telescope.builtin').lsp_dynamic_workspace_symbols)

    -- Format Code
    vim.api.nvim_buf_create_user_command( 
      bufnr, 
      'Format',
      function(_) 
        vim.lsp.buf.format()
      end, {})
end 

 
-- Mason Setup
require('mason').setup()
require('mason-lspconfig').setup_handlers({
  -- General LS func if a custom func is not defined below
  function(server_name)
    require('lspconfig')[server_name].setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })
  end,
  -- Nim...?
  -- Lua (lua_ls)
  ['lua_ls'] = function()
    require('neodev').setup()
    require('lspconfig').lua_ls.setup({
      on_attach = on_attach,
      capabilities = capabilities,
      Lua = {
        workspace = { checkThirdParty = false },
        telemetry = { enable = false }
      }
    })
  end,
  -- Javascript
  -- Python
  -- Markdown
  -- Svelte
  -- C/C++
  -- Rust
  -- Haxe
  -- HTML/XML/JSON/CSS
  -- Tailwind...?
})
