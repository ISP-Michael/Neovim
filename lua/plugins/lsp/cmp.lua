return {
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      {
        'garymjr/nvim-snippets',
        opts = { friendly_snippets = true },
        dependencies = {
          'rafamadriz/friendly-snippets'
        }
      }
    },
    config = function()
      local cmp = require('cmp')
      cmp.setup({
        completion = {
          autocomplete = false
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<CR>']      = cmp.mapping.confirm({ select = true }),
          ['<C-e>']     = cmp.mapping.abort(),
          ['<C-f>']     = cmp.mapping.select_next_item(),
          ['<C-b>']     = cmp.mapping.select_prev_item()
        }),
        sources = cmp.config.sources(
          {
            { name = 'nvim_lsp' },
            { name = 'path' }
          }
        )
      })
    end
  }
}
