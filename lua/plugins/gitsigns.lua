return {
  'lewis6991/gitsigns.nvim',
  lazy = false,
  priority = 600,
  config = function()
    require('gitsigns').setup()
  end
}
