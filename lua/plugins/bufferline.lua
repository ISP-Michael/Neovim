return {
  'akinsho/bufferline.nvim',
  lazy = false,
  priorty = 930,
  config = function()
    require('bufferline').setup({
      options = {
        separator_style = 'slant',
        show_buffer_icons = false
      }
    })
  end,
  keys = {
    { '<Tab>',      ':bnext<cr>' },
    { '<S-Tab>',    ':bprevious<cr>' },
    { '<leader>bd', ':bd<cr>' },
    { '<leader>bD', ':BufferLineCloseOthers<cr>' }
  }
}
