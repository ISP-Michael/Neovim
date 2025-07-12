return {
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path'
    },
    lazy = false,
    priority = 900,
    config = function()
      local cmp = require('cmp')
      local luasnip = require('luasnip')

      require('luasnip.loaders.from_vscode').lazy_load()

      cmp.setup({
        snippet = {
          expand = function(body)
            luasnip.lsp_expand(args.body)
          end
        },
        completion = { autocomplete = false },
        mapping = {
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<CR>']      = cmp.mapping.confirm({ select = true }),
          ['<C-e>']     = cmp.mapping.abort(),
          ['<C-f>']     = cmp.mapping.select_next_item(),
          ['<C-b>']     = cmp.mapping.select_prev_item()
        },
        sources = {
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'path' }
        }
      })
    end
  },
  {
    'L3MON4D3/LuaSnip',
    lazy = false,
    priority = 900,
    config = function()
      require('luasnip').setup({
        history = true,
        updateevents = 'TextChanged,TextChangedI'
      })
    end
  }
}
