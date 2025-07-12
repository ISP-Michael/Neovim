return {
  'windwp/nvim-ts-autotag',
  lazy = true,
  ft = { 'html', 'xml' },
  config = function()
    require('nvim-ts-autotag').setup()
  end
}
