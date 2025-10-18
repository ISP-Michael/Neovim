return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = true,
  keys = {
    { '<leader>tt', function() require('toggleterm').toggle() end }
  }
}
