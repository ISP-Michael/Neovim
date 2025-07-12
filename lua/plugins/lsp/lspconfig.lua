return {
  'neovim/nvim-lspconfig',
  lazy = false,
  priority = 900,
  config = function()
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    vim.lsp.config('lua_ls', {
      settings = {
        Lua = { diagnostics = { globals = { 'vim' } } }
      }
    })

    local lsp_servers = {
      'pyright',
      'lua_ls',
      'csharp_ls',
      'nixd',
      'clangd'
    }

    for _, server in ipairs(lsp_servers) do
      vim.lsp.enable(server)
    end
  end
}
